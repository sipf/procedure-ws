package pf.api.net.procedurews.domain;

import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Entity
@Data
public class Step {

    @Id
    @GeneratedValue
    private Long id;

    @Column(nullable = false)
    private int placement;

    @Column(nullable = false)
    private String title;

    @Column(nullable = false)
    private String description;

    @ManyToMany(mappedBy = "steps")
    private List<Procedure> procedures;

}
