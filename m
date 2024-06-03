Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D62B28D7F49
	for <lists+v9fs-developer@lfdr.de>; Mon,  3 Jun 2024 11:48:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1sE4J9-0005wl-4O;
	Mon, 03 Jun 2024 09:48:50 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <no-reply@cdmy168.com>) id 1sE4J7-0005wf-Tb
 for v9fs-developer@lists.sourceforge.net;
 Mon, 03 Jun 2024 09:48:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZUTyaxRCr3aDawerlReTY70DIX/wkvyfDNXYp8i/wrs=; b=UAO1Ydsrhng3AgjvoE/cZh7vHa
 74s5aah1u9cOp3cjwDAES+8iWt89zBPFeKFckqh+VMNrljLcEHMRxUidiw2nU1y6KL9RI+KCz6OQ1
 ut536WP1UlU+QXUPfZwRztbgWFBI4zM4H0Wrogt5S24HxDedDPImALX8Ai4eJbBWdWP4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ZUTyaxRCr3aDawerlReTY70DIX/wkvyfDNXYp8i/wrs=; b=W
 u0jG9pQeoKRBtlfWyOLBHAyMdpVHBKG4evpPwxmDe4Q1CcaHpCD8WKTpmedlRtq/s4hEY3DE0FQzu
 kn66fW1Hl0eWrdgQ0Gl4UJ/boeCtoeoSoKWe7VVtf7PYdEzO4wUMuXj0THKPPQ6IJwf9F7CLGl8pa
 ET2cSDpbMpVCbyXk=;
Received: from [103.238.225.248] (helo=mail0.cdmy168.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sE4J6-0002eO-L3 for v9fs-developer@lists.sourceforge.net;
 Mon, 03 Jun 2024 09:48:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default; d=cdmy168.com;
 h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:
 Content-Transfer-Encoding; i=no-reply@cdmy168.com;
 bh=ZUTyaxRCr3aDawerlReTY70DIX/wkvyfDNXYp8i/wrs=;
 b=QrxSnstURzcB0j2Skcr39mUd11hN95mdrKWvripCaTNdzN4qvzpQkxdlB3wB6QRVm+hgGeTLuRMk
 flk3GvN202dWTJtf82THIMWiF6vRF8B+CBCO1gh59fN4NleXlQDbCyXX8eeywJfJZvchSlSJLUJe
 GU/gilkzs8iVRqC3PjY=
From: =?utf-8?B?5LiJIOiPsSDvvLXvvKbvvKrpioAg6KGM?= <no-reply@cdmy168.com>
To: <v9fs-developer@lists.sourceforge.net>
Date: Mon, 03 Jun 2024 17:28:29 +0800
Message-ID: <AFGLPODLHAPPCDKHJGOIENNEHGEG.no-reply@cdmy168.com>
MIME-Version: 1.0
X-MSMail-Priority: Normal
Importance: Normal
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-Spam-Score: -3.4 (---)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  いつも三菱UFJ銀行をご利用いただきありがとうございます。
    2日後に引落予定の口座振替についてご案内いたします。
    引落予定日：2024/06/05 合計引落予定額：98,780円 
 
 Content analysis details:   (-3.4 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_PH_SURBL         Contains an URL listed in the PH SURBL blocklist
                             [URIs: hhmsaesgmadsxajn.com]
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: cdmy168.com]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                           [103.238.225.248 listed in bl.score.senderscore.com]
  0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
                             The query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [103.238.225.248 listed in sa-accredit.habeas.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [103.238.225.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.5 SUBJ_ALL_CAPS          Subject is all capitals
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
  0.0 CTE_8BIT_MISMATCH      Header says 7bits but body disagrees
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sE4J6-0002eO-L3
Subject: [V9fs-developer] =?utf-8?b?44CQIOS4ieiPsVVGSumKgOihjCDjgJHjgJAg?=
	=?utf-8?b?6YeN6KaBIOOAkeW8leiQveS6iOWumuOBruOBlOahiOWGhQ==?=
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

44GE44Gk44KC5LiJ6I+xVUZK6YqA6KGM44KS44GU5Yip55So44GE44Gf44Gg44GN44GC44KK44GM
44Go44GG44GU44GW44GE44G+44GZ44CCCjLml6XlvozjgavlvJXokL3kuojlrprjga7lj6Pluqfm
jK/mm7/jgavjgaTjgYTjgabjgZTmoYjlhoXjgYTjgZ/jgZfjgb7jgZnjgIIKCuW8leiQveS6iOWu
muaXpe+8mjIwMjQvMDYvMDUK5ZCI6KiI5byV6JC95LqI5a6a6aGN77yaOTgsNzgw5YaGCgrigLvm
nKzjgZTmoYjlhoXjga8yMDI0LzA2LzAzIDE1OjA45pmC54K544Gu5YaF5a6544Go44Gq44KK44G+
44GZ44CC5byV6JC95LqI5a6a6YeR6aGN44Gv5LuK5b6M5aSJ5YuV44GZ44KL5Y+v6IO95oCn44GM
44GU44GW44GE44G+44GZ44CCCgrlj47ntI3kvIHmpa3lkI3vvJrjg6Tjg5Xjg7zjgqbjgqnjg6zj
g4Pjg4gK5YaF5a6577ya44Ok44OV44O844K444Oj44OR44OzICAgICAgICAK5byV6JC95LqI5a6a
6aGN77yaOTgsNzgw5YaGCgrjgZPjga7lvJXokL3jgZfjgavlv4PlvZPjgZ/jgorjgYzjgarjgYTl
oLTlkIjjga/jgIHnrKzkuInogIXjgavjgojjgovkuI3mraPjgarmk43kvZzjga7lj6/og73mgKfj
gYzjgYLjgorjgb7jgZnjga7jgafjgIHkuIvoqJjjga7jg6rjg7Pjgq/jgpLjgqLjgq/jgrvjgrnj
gZfjgIHmnKzkurrnorroqo3jgpLlrozkuobjgZfjgabjgYvjgonjgYrlj5blvJXjgq3jg6Pjg7Pj
grvjg6vjgZfjgabjgY/jgaAK44GV44GE44CCCgpodHRwczovL2hobXNhZXNnbWFkc3hham4uY29t
CgrigLvph5HpoY3jgoTlvJXjgY3okL3jgajjgZfjga7oqbPntLDjgavjgaTjgYTjgablvZPnpL7j
gafjga/jgYroqr/jgbnjgafjgY3jgb7jgZvjgpPjgILlj47ntI3kvIHmpa3jgbjjgZTnorroqo3j
gpLjgYrpoZjjgYTjgYTjgZ/jgZfjgb7jgZnjgIIK4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV
4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCV4oCVCuacrOODoeODvOODq+OBq+WvvuOBmeOCi+i/
lOS/oeODoeODvOODq+OBr+OAgeOBiuWPl+OBkeOBl+OBpuOBiuOCiuOBvuOBm+OCk+OAggrkuIfk
uIDjgYrlv4PlvZPjgZ/jgorjga7jgarjgYTloLTlkIjjga/jgIHkuIvoqJjjgqTjg7Pjgr/jg7zj
g43jg4Pjg4jjg5Djg7Pjgq3jg7PjgrDjg5jjg6vjg5fjg4fjgrnjgq/jgb7jgacK44GK5ZWP44GE
5ZCI44KP44Gb44GP44Gg44GV44GE44G+44GZ44KI44GG44GK6aGY44GE55Sz44GX44GC44GS44G+
44GZ44CCCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQrmoKrlvI/kvJrn
pL4g5LiJ6I+x77y177ym77yq6YqA6KGMCumHkeiejeapn+mWouOCs+ODvOODie+8iOmKgOihjOOC
s+ODvOODie+8ie+8mjAwMDUK55m76Yyy6YeR6J6N5qmf6Zai77ya6Zai5p2x6LKh5YuZ5bGA6ZW3
KOeZu+mHkSnnrKw15Y+3IArliqDlhaXljZTkvJrvvJrml6XmnKzoqLzliLjmpa3ljZTkvJrjgIHk
uIDoiKznpL7lm6Pms5Xkurog6YeR6J6N5YWI54mp5Y+W5byV5qWt5Y2U5LyaCgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1h
aWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9s
aXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
