package pf.api.net.procedurews.domain;

import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Entity
@Data
public class Input {

    @Id
    @GeneratedValue
    private Long id;

    @Column(nullable = false)
    private int placement;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private int count;

    @ManyToMany(mappedBy = "inputs")
    private List<Procedure> procedures;
}
