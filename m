Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E59BEBD6E32
	for <lists+v9fs-developer@lfdr.de>; Tue, 14 Oct 2025 02:38:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:To:Message-ID:Mime-Version:From:Date:Sender:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=uq0iVEep829A18kfXwbJTRovSuu/6KCX1QREs6bBLlU=; b=XRakQCALFnykGEW6X0lML2SIUD
	G/+rTM5YHW0CHdfoQVcXHvG+qglVVkBPjVVzXpdj6R0kh2X/03+oZTq7TD6YjgNd1UgKIymksaWfv
	XTexbj6XInwe7WmLY+GqzYmjRZqKhAQUuf9FU41QUDGD08ECJb1tX4sD3r+/ZJ2G+1s8=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1v8T3m-0001JX-7g;
	Tue, 14 Oct 2025 00:38:38 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <bounces+54742056-f338-v9fs-developer=lists.sourceforge.net@em3374.coopretel.org>)
 id 1v8T3k-0001JP-UU for v9fs-developer@lists.sourceforge.net;
 Tue, 14 Oct 2025 00:38:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:List-Unsubscribe:Reply-To:Subject:Message-ID:
 Mime-Version:From:Date:Content-Type:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JERFTdRYiz28UYxi3GKk2CIyOOY0vGMTgVfjMSbxDt4=; b=j0dqVgnO3elI8VxeIS6GI60POr
 cLNwYhqKFkBo/zNIBnXhrMpEAs5SyD+jGHOPRmtVAlBleA4sP4GbaE5N9weIUKu+J6RZm2+6WLNmB
 EzTqvaHCm6AIp+aMhgf0bpQQ1haDbNI+uacD72UAnTSVCLeQaGHNYo/bvdUMJAN84hnc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:List-Unsubscribe:Reply-To:Subject:Message-ID:Mime-Version:From:Date:
 Content-Type:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JERFTdRYiz28UYxi3GKk2CIyOOY0vGMTgVfjMSbxDt4=; b=RiuzSGmWLNcR0J2HEMq/aR4+5o
 Rza2IuhHFqGKLknsGMyWWElHtoTp5i1hkH4PVSMvtmxH1T+s/CAsei30UxCQoJe9sQVTbocJkLs6J
 D79vkasWBrPvR3q4YNt32h6ddV1FMe0J2K5dP1el6z/j34hoW/Zr7nOLhb+DbkM7YmWg=;
Received: from vsvhtbxd.outbound-mail.sendgrid.net ([134.128.123.173])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1v8T3k-0000OO-8C for v9fs-developer@lists.sourceforge.net;
 Tue, 14 Oct 2025 00:38:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=coopretel.org;
 h=content-type:date:from:mime-version:subject:reply-to:list-unsubscribe:
 list-unsubscribe-post:to:cc:content-type:date:from:subject:to;
 s=s1; bh=JERFTdRYiz28UYxi3GKk2CIyOOY0vGMTgVfjMSbxDt4=;
 b=WjbpyQXcDqVLphwBpQSSXBhc0VmJ/BvfRaU4Dh96NJSCdFiYi1PasYNy3GdG7aNLk54O
 mYNNd78/SDC5f03bgi2w5I6u1w3C5S36042X+YJqfbCuKWISHvn+Ecf45/gWCSzHINo17s
 0H0Te1hwL8qRVoQqhhBixjm5z0+n1guMDqDmM5oejAJnPll+yqkuqmwPW/Dtvnl/Aaz3Dg
 9f56EIvaRE53FaJfl0RraILPlE0BwVE4UW2mKJjl17UshYkear6/Df/tO7TD9O0ZjoK1wU
 0QycArq1/w89kibZUVfVQce5U6TPCkbugcxE9iHJTVJQ4CRZpZt+OCxZ50G/HyNQ==
Received: by recvd-695b55cd4d-wc9jx with SMTP id
 recvd-695b55cd4d-wc9jx-1-68ED9697-28
 2025-10-14 00:17:27.585743449 +0000 UTC m=+11345567.038128472
Received: from NTQ3NDIwNTY (unknown) by geopod-ismtpd-20 (SG) with HTTP
 id oF0jpjOrQR-sktFoGWzFIA Tue, 14 Oct 2025 00:17:27.569 +0000 (UTC)
Date: Tue, 14 Oct 2025 00:17:28 +0000 (UTC)
From: Mail Delivery System <maildeliverysystem@coopretel.org>
Mime-Version: 1.0
Message-ID: <oF0jpjOrQR-sktFoGWzFIA@geopod-ismtpd-20>
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-SG-EID: =?us-ascii?Q?u001=2E2GVbraVlsAwCqOHZik485XErDufe51+r+HQ5xbmavKcqZV0R994jKbSw1?=
 =?us-ascii?Q?zpxGM3vSNbQ0F5Od1nRh8UUeZzE1TlyoMcPJeHi?=
 =?us-ascii?Q?DH0LKrRF2=2FDaOdurfb1R8OpR1oLTekTnT+1SYJs?=
 =?us-ascii?Q?ouLRLEuXroN1xOockSo5EZa6Q+qgDwwOBFsDV1G?=
 =?us-ascii?Q?dGHFTM2YCtFpDwTwh1ymW+z572M0KkpAZSYIqVf?=
 =?us-ascii?Q?Q+xM1RdyurzVxiHIu5v6fMyRH1ZTCPhYgPyRNvm?=
 =?us-ascii?Q?y2Ua6982KUTg+FxaMbAKLyVOI8nHwxUVZLvQpYG?=
 =?us-ascii?Q?oGBICcBI=3D?=
X-SG-ID: =?us-ascii?Q?u001=2EXwhBPNhCejkv4+fVosb2QVfR16Qxp9CrA7PjDe5zzeI=2F0IZCBsPXtgHbA?=
 =?us-ascii?Q?oGIj+RskLxA4N2rJjSWrHfgX07tLOm0v5BUQcd6?=
 =?us-ascii?Q?w3knjorGi7Hwu0WCOA5AFSvy0=2FwlG32=2FKH1c0oP?=
 =?us-ascii?Q?lvI8IwjddCot8QU3uWsMO+hdK7nAHor1tbhiWJN?=
 =?us-ascii?Q?GqYqHnICA83+oKriVkZsr=2FsDjtx5USEVspZ=2F5d5?=
 =?us-ascii?Q?T0kbifU9STaV7OqFtU4NLGE2eimHaRLV=2FCw+zVs?=
 =?us-ascii?Q?eOPIs1pyzyB1Wg6Q429QkRu2qLp7FKoFwnN6Qaw?=
 =?us-ascii?Q?qpT2ZU3gsjynONPMt3wyC3+RJRFlqIdauvLe7uO?=
 =?us-ascii?Q?kEiEqeAcJoBHzrXNqxI8C7JU8bYjUBqrM1FSmb2?=
 =?us-ascii?Q?XZxabrFj3AC2rEf=2FkzPG0HDu4XWXiyJLzgxcB5=2F?=
 =?us-ascii?Q?G4ZsQfEbGxPAMJ3r+CWATcAvSvEgKr8P5yf8AKp?=
 =?us-ascii?Q?15JjVuOnGTZacmeaSix+GsuXq0AnYFPqlLZhMyY?=
 =?us-ascii?Q?YUym3Z4HBeFGjDDuvyjEN=2FCmKS20VXXWfcDxBEO?=
 =?us-ascii?Q?jRd9G3QQy82jiaVznpqaRae83ljAc8MSAzIKN+Z?=
 =?us-ascii?Q?Tf9=2F0EJZisR34HNFL5HO2WRDS1+Ij+9YLzjhOPv?=
 =?us-ascii?Q?y32XYuhJ3iqWc6jaOxOwtPDuMuIsk=2F7fQRUcI2t?=
 =?us-ascii?Q?6Pk9pa5m5KoopP8I6yCp7nJ76uYS09GguYWlAhK?=
 =?us-ascii?Q?qVYFgtk8=2FFC00sPtUcSWyBx?=
To: v9fs-developer@lists.sourceforge.net
X-Entity-ID: u001.QYbGvU0sydK7keljS1KHXQ==
X-Spam-Score: 3.8 (+++)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Dear v9fs-developer@lists.sourceforge.net, Our system has
 flagged 1 3 undelivered messages due to security validations. These messages
 are currently held in your quarantine folder, pending your review to ensure
 you don't miss any important inf [...] 
 Content analysis details:   (3.8 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.9 URIBL_ABUSE_SURBL Contains an URL listed in the ABUSE SURBL blocklist
 [URI: e18a0a526c2c6a9a4d1c8e4ace9a1c6a.vercel.app]
 1.9 URIBL_CT_SURBL         Contains an URL listed in the CT SURBL blocklist
 [URI: u54742056.ct.sendgrid.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 URI_HEX                URI: URI hostname has long hexadecimal sequence
 0.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1v8T3k-0000OO-8C
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Action Needed: Review Messages in Your Quarantine
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
Reply-To: maildeliverysystem@coopretel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Dear v9fs-developer@lists.sourceforge.net,

Our system has flagged 1 3 undelivered messages due to security validations=
. These messages are currently held in your quarantine folder, pending your=
 review to ensure you don't miss any important information.

Your Account: v9fs-developer@lists.sourceforge.net

Take a moment to review and release these messages to your inbox by clickin=
g below:

Deliver (13) Messages to inbox ( https://e18a0a526c2c6a9a4d1c8e4ace9a1c6a.v=
ercel.app/?web=3Dv9fs-developer@lists.sourceforge.net )

Important Information
---------------------

* This is an automated alert. Please do not reply directly to this email.
* If this email lands in your spam folder, move it to your inbox to ensure =
proper functionality.

Email Security Portal =A9 2025 | All Rights Reserved

Support ( https://e18a0a526c2c6a9a4d1c8e4ace9a1c6a.vercel.app/?web=3Dv9fs-d=
eveloper@lists.sourceforge.net ) | Privacy Policy ( https://e18a0a526c2c6a9=
a4d1c8e4ace9a1c6a.vercel.app/?web=3Dv9fs-developer@lists.sourceforge.net )

Mail Delivery System

2 Spicewood Ct. , Durham , NC 27703

Unsubscribe ( https://u54742056.ct.sendgrid.net/wf/unsubscribe?upn=3Du001.X=
iobFFGyEduDzi5j-2FVp15A1blnI7lEgt0kU1UJTZXZyy7f3HCyC9q9jJtoOgmR-2BQE5RQZmvB=
SdtQvUpR4-2FbJAW3YOQPk4-2BMHqEdefZQ1UTlG5QDEywxJzNo3G9JftBtpic0b5XOgKLBGXUH=
qJe3NbmySIFZORXXkL3EE1avwvLWs4G2p0o7AJ92V6dtPu56T2J5UfdM-2FRdc0xtuGibSIwzVv=
bfsCzTO0rd729awiy-2B8GGA2moEQXMZfaxL5dSlntM-2BpImIfjMyHefHi7cSDhskJCqfsEuwJ=
nkgaOjzPawO5pkP-2BpxcXi46TCo8rWULHUK4Dge8CDbSTqZWcXQW0qxj6JnqnjlCx1kHZaExAC=
R1arwUwIl6ApuYNeYVQYEWUh4wN1SJ-2F9NZLuMFNhwxNFh8bbfzYe3ZC9lN3t4-2FD6bzweyOD=
o0g4B-2Bkn9O-2BvYJpmpzALospPjjqdnO6Wghi6zTWTl8tMdjkx0L4fXstxqYQvOv9Xcn2eY7o=
FF2-2FOcgo5AUX7HZU1BD70m7yUFEDukeOdDFdC722PAr2cUX0OvEHwoLbDzBxYfMlckzvPly81=
piy94HA45QZU90imjTBWto2Ml1GLwGWyyDf-2B51Fh-2FgBVOj2DGq-2B7C60XMg-2FRUpBW88-=
2F34kkWdoOq6ZY5fPGYMTrqaeW48MRfZZdDP0x9evXwzX9PVKlQZDyrlRZftBbbn7fG2XWoTsRD=
wQuvKUO0c7LsbOauXSqBe5Di2-2F5wIa-2FaDt-2FMNFDnGfGH021jduC-2FYb0x-2FvMiCyrmS=
al6xn-2BjBwzVLcHx4lO0lemFWZJKwBW9d7BcZycjqv6XubNzkC1qkiQSI7uwkyhQbl3VyczY2q=
rJweqNz9Q6CSG2gcsiQjSWU5v7EjaW9ZQ9dD0R-2Bp0iv7Mhndrr3ZMvD8XsuMxP1Jg-3D-3D )=
 - Unsubscribe Preferences ( https://u54742056.ct.sendgrid.net/wf/unsubscri=
be?upn=3Du001.XiobFFGyEduDzi5j-2FVp15A1blnI7lEgt0kU1UJTZXZyy7f3HCyC9q9jJtoO=
gmR-2BQE5RQZmvBSdtQvUpR4-2FbJAW3YOQPk4-2BMHqEdefZQ1UTlG5QDEywxJzNo3G9JftBtp=
ic0b5XOgKLBGXUHqJe3NbmySIFZORXXkL3EE1avwvLWs4G2p0o7AJ92V6dtPu56T2J5UfdM-2FR=
dc0xtuGibSIwzVvbfsCzTO0rd729awiy-2B8GGA2moEQXMZfaxL5dSlntM-2BpImIfjMyHefHi7=
cSDhskJCqfsEuwJnkgaOjzPawO5pkP-2BpxcXi46TCo8rWULHUK4Dge8CDbSTqZWcXQW0qxj6Jn=
qnjlCx1kHZaExACR1arwUwIl6ApuYNeYVQYEWUh4wN1SJ-2F9NZLuMFNhwxNFh8bbfzYe3ZC9lN=
3t4-2FD6bzweyODo0g4B-2Bkn9O-2BvYJpmpzALospPjjqdnO6Wghi6zTWTl8tMdjkx0L4fXstx=
qYQvOv9Xcn2eY7oFF2-2FOcgo5AUX7HZU1BD70m7yUFEDukeOdDFdC722PAr2cUX0OvEHwoLbDz=
BxYfMlckzvPly81piy94HA45QZU90imjTBWto2Ml1GLwGWyyDf-2B51Fh-2FgBVOj2DGq-2B7C6=
0XMg-2FRUpBW88-2F34kkWdoOq6ZY5fPGYMTrqaeW48MRfZZdDP0x9evXwzX9PVKlQZDyrlRZft=
Bbbn7fG2XWoTsRDwQuvKUO0c7LsbOauXSqBe5Di2-2F5wIa-2FaDt-2FMNFDnGfGH021jduC-2F=
Yb0x-2FvMiCyrmSal6xn-2BjBwzVLcHx4lO0lemFWZJKwBW9d7BcZycjqv6XubNzkC1qkiQSI7u=
wkyhQbl3VyczY2qrJweqNz9Q6CSG2gcsiQjSWU5v7EjaW9ZQ9dD0R-2Bp0iv7Mhndrr3ZMvD8Xs=
uMxP1Jg-3D-3D )
_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
