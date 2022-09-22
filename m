Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E61B75E68CA
	for <lists+v9fs-developer@lfdr.de>; Thu, 22 Sep 2022 18:47:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1obPMd-0004C0-5y;
	Thu, 22 Sep 2022 16:47:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <casey@schaufler-ca.com>) id 1obPMR-0004Bn-4d
 for v9fs-developer@lists.sourceforge.net;
 Thu, 22 Sep 2022 16:47:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HLuQousOxe85ItzKBGOzCJooyd+X6tRLuu1h8Oz3VYg=; b=Qx/8CiC6ewbMkj1PzOx2ZLUqO8
 gJU7MICQ/cSCp2mKRiDYreuF2qN54u5rFbNWTDVbXKP4UAmqZ8f5Ahpc6VTlDrTan3vPc8rdrdnwc
 fbcnHpdeqyYM2JBO4HbOj6cAi/jtYVr5+1EYtZMdjsm1J6k/Jmeo8iYqslUzQhuto56o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HLuQousOxe85ItzKBGOzCJooyd+X6tRLuu1h8Oz3VYg=; b=Yu0wqKUkSNRTxs48YpYzOijyPB
 Fs56rNnZMRBWDNUQFf9aFXZfSTcpthpkfm9WFsumu08DrQQmdQgnMizJXQzN80l07ZLjUSIzbl6f0
 WU22nLICbpwQ1e5btLIDnAN3eryyepQSBSKZ4R4WK/7LIJec6yC20Lq04m4J2aMsGeXY=;
Received: from sonic306-27.consmr.mail.ne1.yahoo.com ([66.163.189.89])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1obPMQ-00Gj7X-9g for v9fs-developer@lists.sourceforge.net;
 Thu, 22 Sep 2022 16:47:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1663865252; bh=HLuQousOxe85ItzKBGOzCJooyd+X6tRLuu1h8Oz3VYg=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From:Subject:Reply-To;
 b=JvGtuPQ9Dy4Oaek5OC4w6eB3t1wKsg2nh4yV8TPKPhFC0jfk99BF24AZiIMhMB+80JDvaM6l3RKsL9tObtS5H9pEMTAqz+pcjERAWGSYb2gAsxLzjB4o793DLVKmmWdtj53PQ51JecwIuhgUlod6RVb1LBlDLGEk5exkRPEfp10E3eSKjyxd03i2URBmT4AeX4x0SCkRui+mZYHqN9lmNei0VhZxHPGsoSf4LyvhMjWFAFs88WYgNnnN8MowcoPhcNCXquoCs/Po5BVQJpzlyCxe9xB1JOEtd5Ega9DQd98gaa2T5p5VmeXLAc5tIJ3kmQ8E9hZDRlXjAsZraA1HZQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1663865252; bh=WPJaKObeKUrol5KuGvsZxgB+wqBYE8xXrlkksQHpX6O=;
 h=X-Sonic-MF:Date:Subject:To:From:From:Subject;
 b=Yi3b4i+IIilsSrpA1Mt/7m0I3QeWxSX/hxckG0xx2JjXLOnSUD0QU4SveDYaGeFUNnyh18iP/otuSupFHa3I2kD4YJ++BygqXDksvAiSACP9i+W/O2VjrhzwteM1SUJaNCH7m5FUngx91j3n5r9Kly5KPb5xHi4/2StGkOqsuh1fI3uiEHl83V5dXhi7mrsLzOZSFQfoBwBDjNfd4ouGkkfetpXT/u0Ybk5vbURiyhSYzOlHDHaZgv9lBrz8SqnY5RZ6lCbxQiH51LxRGaglxXGH4IZGiFVJxrZeVhQEPVDBB1N1kA8EybtP7fus1Xg9whk2meVsFOJCYSqchaH05Q==
X-YMail-OSG: f5ydc9QVM1k7l1ohbr0jcrv8Un_EBpkKiqfkcN1GW_4p2A5EoNiwnZqiq2Gahix
 tIfkYa2DOehcBuyYAwgsjrioDTGPCpagtmSQ2HNOqqq5vH3jGzjKkjW3XyXuz07fdGxRLVKh3bLg
 aQhdHshX.G4R3h3Zh1HTcjs.B4BMb8U9WSFf5_SU0aAPQtC1tSwhqNyE5c3O3UwfhoAirGEG.7cC
 pkJqhHWJf.s1J09eC3XNLeg18kn3yXN3ZBTF3JNwr4dtgJak9l9f0LGKYtN1uiLj8hjKt13t9vCZ
 jSSyh0ry_pI9tYXN5.nJlIXjAAKn01Ma7idTpgKRSN5OReHlkoKh6CxcPoptMFDWUYMzcsN7O1Ql
 IhLkVvl_WnFVpx7awaPtO_ILCl9EYxCwMiiZIrBDKstze9kuEujQq3U8t3JwirU5N47kusx70O6C
 N6VH5rc6S8eWusPTqN1Dj_sH9XsxvtYWV3gxR7yTL4rZH.grFVvqrt0iEe.TlLypS_x1e_k0vYok
 op4blUDGKCPwbXsE6hlClgDy28AYa42poGZoHHsmZSTKopAg7QPqSw5gwnDP7ZFFZO8IijbOWKJh
 3daYLhnHp.aTT190DGZq81OggjA7aWJSO1ArH5xMZcKFHFr7FTq39_SL2YftUDNBFoshl9xZsN1p
 7jpa0RRtkL99457X97Y35Co.12Ca394JZLTfCOO93qzWJjRa150NmzXKU7oAgKTIgkSpYdfZ7tJI
 TBR4AyYqDx7CPvknwaED5fpSyX8CqzDknnSwAPMgbm3mWEprjz5yAo_f.m2IVUeDFnPxnjbnA_YV
 1KiSm3qxb0WRwfkqTpenCHG.5qpLK8nYa4jgLf.o.maFjWqx0TDSM_nLnPb_2gHKE3zpAP4ffS3y
 57G7D5sEnKmeUQr6Tt1.yozx_.kJCKB_H70ObOyNQ0E4xOwdZyiRsjevl3t_f4CYfwnXcnyieuDd
 rydogEf6aRLtATGNqp2iziCIY.Jug0I9Gaa0dK_.SE5cYzUgqHIDWjvO4rZdrq2.KU5yNANYgsG2
 d4POCv5x9TGi_toDam3vlfqgljywx0gmJiCcGKEDp.M0iyToPySKn7RObpAse2t5cc8NJDYaaO2P
 pWi7j5N_mZwwWYnBVpcyJWpCr4J5DLjRhPsjEJkPJ1smYdKq7ZDfZ0E1ZOKRwOnE3BfFf_pfFZ7O
 jOwvXiwLQK4ihhu4669.NifzP2vLzfrvN0eSfMU2b5GjMbsOuu7gd8iLfoieNgCnvIcWIECGb29T
 BUCosGkL_NeIw_ahIgMNwVXUTaOBPtZtZJsXCjfywgj4Q25BaS1qahrlGkVgGfnMGDlr5WAGuRW0
 N8IhuuCuSxY.SdjMdVlhlHO9ADB1TR6RVpoyCqCW2Qb4j3_amERC6Pfq0YGGpwJm_IcKejb67QHV
 fF3L5LAxR8yQ.vs1ewfoMJ_vQN3rY0.ffCNwk9KdmmtY5fBF1jpECEeWYgnhSu4XGcSt0BEuFqPj
 ZBImzjTWj5x.kkDMBaa4s3hTYXplWLiR5hfH8VCUBGWShxNfd1LZ.nJA9L6QJm_6WFbKEc88qNoV
 JBioltqYz_U5ut92wwGvmu7AI6RFYB89Pg7saJm.h9Sye88F_NtM38mN3Kaa5LBnOZyBCrsax5L1
 ANY.df7R61EdyKopPbuBdvvNQzd_hh41NhjED01_IOzbK978uK9x9aDG2RHbTFxBJ4F_EGPUBFL8
 BnCWLZyo8XMtTeToI8E36mNSBMj_xU.ICEaoKv.u3f2SJMh_7hMHc1BxpMEb5gNCe4Z9sbiMe6.x
 kfqa.Pn2kzrP4gjQ1UGpWNBTTUqn180V7dKMrC7T2.tLI0Gd3c1I0tUhPx7JulMrCKhXzzH_0_wq
 2CPUripjjJSX_e2ojdt3baExHLhw7QmFjcrFU71tHkjne1m8gcH494dewy0tPxoIZyKaYYbkShH6
 SKIJ9TNPuloXeFvQpSPlpvcYudPKbZLP8l3CvxuAs7ZJ9nom.m_BWr_1WqCTeWDDmvGlh9X6.g6W
 M6BQOZo1uJXAEAHA7Nc6riHhUXup_yjSPDI26AISc4TwmfABtlFcFJndJxO7aRJQRcnsf5K0W8ei
 ELJti6viwuAdDtJ7gULm1Mmrg6QFjHvkHzQoC2Eh3a8b0gZXPzijVe3Rfp1sQI0hE20X6RxmLJzs
 uetAlHe_kGU7Jb97icngcoJH4.A1UbSdw7UML2gaQ9.dt8zNBA4Qy19EPRW2k6Ww59S8wIw0I5ox
 ahmLcH580L4vuppt2g9tBxo78_IZkPAb89JvbE8U6rGFEcGhkcZ1Pf9o5fzM5lt8GQkXDAcRGy0N
 RIOtdITdM73m0aeRTJ15YgDopgQ--
X-Sonic-MF: <casey@schaufler-ca.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic306.consmr.mail.ne1.yahoo.com with HTTP; Thu, 22 Sep 2022 16:47:32 +0000
Received: by hermes--production-bf1-64b498bbdd-ds6cg (Yahoo Inc. Hermes SMTP
 Server) with ESMTPA ID 803b97668af2e2870df2ffe80b36b598; 
 Thu, 22 Sep 2022 16:27:13 +0000 (UTC)
Message-ID: <d74030ae-4b9a-5b39-c203-4b813decd9eb@schaufler-ca.com>
Date: Thu, 22 Sep 2022 09:27:10 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Content-Language: en-US
To: Christian Brauner <brauner@kernel.org>, linux-fsdevel@vger.kernel.org
References: <20220922151728.1557914-1-brauner@kernel.org>
From: Casey Schaufler <casey@schaufler-ca.com>
In-Reply-To: <20220922151728.1557914-1-brauner@kernel.org>
X-Mailer: WebService/1.1.20663
 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.yahoo
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 9/22/2022 8:16 AM,
 Christian Brauner wrote: > From: "Christian
 Brauner (Microsoft)" <brauner@kernel.org> Could we please see the entire
 patch set on the LSM list? ( linux-security-module@vger.kernel.org ) It's
 really tough to judge the importance of adding a new LSM hook without seeing
 both how it is cal [...] 
 Content analysis details:   (-2.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [66.163.189.89 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1obPMQ-00Gj7X-9g
Subject: Re: [V9fs-developer] [RFC PATCH 00/29] acl: add vfs posix acl api
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: linux-cifs@vger.kernel.org, linux-security-module@vger.kernel.org,
 Seth Forshee <sforshee@kernel.org>, casey@schaufler-ca.com,
 v9fs-developer@lists.sourceforge.net, linux-integrity@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>,
 Al Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 9/22/2022 8:16 AM, Christian Brauner wrote:
> From: "Christian Brauner (Microsoft)" <brauner@kernel.org>

Could we please see the entire patch set on the LSM list?
( linux-security-module@vger.kernel.org )
It's really tough to judge the importance of adding a new
LSM hook without seeing both how it is called and how the
security modules are expected to fulfill it. In particular,
it is important to see how a posix acl is different from
any other xattr. 



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
