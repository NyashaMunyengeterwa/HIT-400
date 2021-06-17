package net.javaguides.springmvc.repository;

import net.javaguides.springmvc.entity.Login;
import net.javaguides.springmvc.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository("userRepository")
public interface UserRepository extends JpaRepository<User, String> {

    @Query("SELECT t FROM User t where t.nationalId = :nationalId ")
    User getUserByNationalId(@Param("nationalId") String nationalId);

    @Query("SELECT t FROM Login t where t.userName = :userName")
    Login findByUserName(@Param("userName") String userName);

}
