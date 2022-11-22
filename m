Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D348633F5B
	for <lists+v9fs-developer@lfdr.de>; Tue, 22 Nov 2022 15:51:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oxUce-00086T-2g;
	Tue, 22 Nov 2022 14:51:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <1axcgh1m0m36f49srzq062zwmwjnrrqhxkurwu@bf01.eu1.hubspotservicehub.com>)
 id 1oxUcc-00086N-6a for v9fs-developer@lists.sourceforge.net;
 Tue, 22 Nov 2022 14:51:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Subject:Message-ID:To:
 Reply-To:From:Date:List-Unsubscribe:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=v0p6PhbNkIr/MW4j2XI8MkC8pxZR2JLPoFnom1rPaNU=; b=kADSto0+wmT4OAn9cyo5BVuYz7
 9m8I6vUBJ9f5Fa4du321IzH74DOu/arQU8+ToUMp6kdgf7a2p3bVwz81NQRUEx0yEk/nOCn0g6uzS
 qrVJAvFKfNrl9TDVAYDRSGjh7lyqeHZ145iOk8jJKzpypH/6c+pLsBC0zbOJ63BsfZO4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Subject:Message-ID:To:Reply-To:From:Date:
 List-Unsubscribe:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=v0p6PhbNkIr/MW4j2XI8MkC8pxZR2JLPoFnom1rPaNU=; b=OwCx1Z1EcidnUxHRA1rITQGzFg
 G8TW1EIrCgR7c4TP7J1iFl0/1YIQFJKEKT/ULgFWqrgTtAtfCG+Hm8jbU7w3xMkQB90z/LL261PZ0
 kUlyCiaCjiwB2/rfCypspIZhJ2mgpZtbunIN4Oqvgx9QO9BfNDb626ujy7mAagiIAF4A=;
Received: from bd77fbu.bf01.eu1.hubspotservicehub.com ([143.244.84.200])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oxUca-00C5lH-8j for v9fs-developer@lists.sourceforge.net;
 Tue, 22 Nov 2022 14:51:37 +0000
Received: by 172.16.236.72 with SMTP id avf47m3rs9k7qaas10lysnc2vruq9pxt3sz;
 Tue, 22 Nov 2022 14:51:21 GMT
DKIM-Signature: v=1; s=hs2; d=bf01.eu1.hubspotservicehub.com; 
 i=@bf01.eu1.hubspotservicehub.com; 
 h=sender:from:from:reply-to:to:to:cc:cc:subject:subject:list-unsubscribe:form-sub:feedback-id;
 a=rsa-sha256; c=relaxed/relaxed; 
 bh=v0p6PhbNkIr/MW4j2XI8MkC8pxZR2JLPoFnom1rPaNU=; 
 b=aj1M+BeymgY07njh6BHZSAAiVBWslzjc1k6qkVaROJqkzTZ7pFlSwp3FTXZ3pC
 +d00dhSkbzx7+tcaFGzGBwTOTOoPcKPuDaSSAqqaKOV1qQP/LL5SYlql7aZncmH
 NtJOROFKLTBbun5/Ft1Ozqk/WioMYMStdbKLTTknrHo7aK9FeEEI9YSzNCe+NDw
 NrdS7lmxSbyl7dZYVgy/YTXTJb2JKcY5b/V0arLBftMlBX4NwUoDr+ykc9clVq7
 RyJvb8DLMTSHRKiB3NoVdSeI8OfsLwm0tdVhBmfZQsM5YTvTErh2OlTyJAN3TGK
 ZNNkVQNcILGG5ztuZwTEZUF/c38g==; q=dns/txt; t=1669126703; 
 x=1669299503;
X-HS-Cid: 1axfnklnt46s8qxk6qnfju2c6b3j1um95s3b16
Date: Tue, 22 Nov 2022 15:51:21 +0100
From: Auctim Opco <noreply@auctim.com>
To: v9fs-developer@lists.sourceforge.net
Message-ID: <1669126702723.0f06797f-133e-4464-9eab-39e322cf963f@bf01.eu1.hubspotservicehub.com>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@hubspot.com (see
 https://policy.hubspot.com/abuse-complaints)
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hey Auctim user,
 Your opinion matters for Auctim! In the continuous
 process of improving our services and our website, we would like to include
 your opinion. 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [143.244.84.200 listed in list.dnswl.org]
 0.0 URIBL_RED              Contains an URL listed in the URIBL redlist
 [URIs: hubspotlinks.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 URI_HEX                URI: URI hostname has long hexadecimal sequence
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1oxUca-00C5lH-8j
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Your opinion matters
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
Reply-To: noreply@auctim.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hey Auctim user,

Your opinion matters for Auctim!

In the continuous process of improving our services and our website, we would like to include your opinion.

We would like to ask you some questions about the start and closing times of the auctions, which will only take 2 minutes.

We thank you in advance.

Start survey  (https://d316DH04.eu1.hubspotlinks.com/Ctc/GG+113/d316DH04/VVtmNB4FLpqHW3HxHmL8j8wFzW2jjqKJ4SHBMbN4Pt_Nc5jyNhV3Zsc37CgYcjW1nK9zM8nMZc-W6bS-J47j0sZtW4MNrgM5Zsxj8VtGfFX8x_dRPV-XSFm1hzmf9VjwS644qz9GdW8RSvnp44SVT1W1v2PdJ2XDPWFVB6SK585_NDfW13j8J57LBmkCW7dKc1T1mWnPkW2sxRbv4-qhxZW4-qNmP6pQ-fmW1mCtwV8CQCvZW6W07jN7HvJ4fW2RpHbl62-4WzW8dH5N_7pR96YW8G6Kmz8xrqdGW1fq7Qv5w4LNkN2DQhp1ZgjyQW4-7NDZ6VpM9JW6224Wx6H9G5YVgCljp1DjCWpW99qTvS3T84QsW23srfw7y5C3_VzXVPb8BwrQMW86vtJV6WyklrW2ynxzf99t86SW7cWdDf53SByMW8q0-sn4jKFjrW5M8kh-2vvTbNW4fSRlr3F5V4NN2rZ8m2b09TpW2P2hMw7dgFN8W6nMtXW5DvGXsW4B3_232GRB65W1Pjmvj96V92VVwlkjz6rhvYWW3qNqzq7pVQQ7W6-FbFR1YD8_tW3zF6QD4m2gN-W3Yr7Qt8JY22p37bP1 )

This survey is a service from Auctim Opco (https://d316DH04.eu1.hubspotlinks.com/Ctc/GG+113/d316DH04/VVtmNB4FLpqHW3HxHmL8j8wFzW2jjqKJ4SHBMbN4Pt_MD3l0fwV1-WJV7CgBWyW88NBzh1QGLLYW7fxZsd6k5MbzW3G2n026vkLJHW9ldM7s3sdXtGW1MhjJK3YjclCW1dnsly3kMY_VW75YXSv3s4f93W709d5z8g6XqTW5f_0PF5WmThqW8mzcfg2SS9FZW95JGms4-4SN8W5fk1TY3tygDbVdF1QY1R_PvgW7Z4KgC9dpMq_W2Qdn_K88rz9yW1Vjqwk4pVJ_zW4K63y32RWjn_VvWyC08rTv6MW38_8Bh4-8BQ_W7zr7Xp97rdDnN6Lnty5T8KjfW6zfPz21FPDJ535DK1 ) .

Update your email preferences (https://hs-25685946.s.eu1.hubspotservicehub.com/hs/manage-preferences/unsubscribe?languagePreference=en&d=VnlNNC89d1PFW1kYV944cfL3BW4kCHTw45Nql-W3ZWWls4cg8TwW4hLxLG3M6647W3JFwn14f3LDKN93S19dmWcNyW6jSh_W6WxQ9dV25B8H96v6bcW5PMV2j4QzCjyF7lZRzf1v9gW5J6ZXB2wBCS9W81qfsJ7slnxmn8kRhJG1Y3&v=3&_hsenc=p2ANqtz-9zomffAJv0LL0KWDqjPUssjfH41t8KZZdSoJ4puZ3RuyhqRLHE4kSXU788tiqCzyHx_dzXe2nByH0Hp974sRcyAzDSXsmTU1xjHCLaXcwQTqyKH9c&_hsmi=66110247 ) to choose

the types of emails you receive.

Auctim

Helstraat 47

Aartselaar, Antwerp 2630 Belgium
_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
