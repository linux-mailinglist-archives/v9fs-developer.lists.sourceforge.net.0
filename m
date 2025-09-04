Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF5DB449B1
	for <lists+v9fs-developer@lfdr.de>; Fri,  5 Sep 2025 00:34:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-Id:Date:MIME-Version:From:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BGmTYckSYWDG8IQCyCzxk3z/6tAH/5akTDYASwzsNcM=; b=RnmoBSAc2wxcG3o3ZmclSyPbA5
	6DW34vHwW99YhJFVQM8Xz76Vo05/mvgpamkSvwchZz+Vm+cm7toAHECME+Yg/8A2ikctGXyiAG5T8
	ckL9LfhgEgH+4lRvP5MFupjCoFgf6poria2NhJuBOeu/KEVHNOxueVnXYEHuha9FvDHY=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1uuIXQ-00010B-6y;
	Thu, 04 Sep 2025 22:34:40 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <bounces+45627169-2440-v9fs-developer=lists.sourceforge.net@em8374.hmlca.com>)
 id 1uuIXO-000101-L9 for v9fs-developer@lists.sourceforge.net;
 Thu, 04 Sep 2025 22:34:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:Message-Id:Date:MIME-Version:Content-Type:
 Subject:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=J8uMitduJcbPHnE6VXR5yhKI5pqlkHyRvrlMe5Iyiek=; b=Sdf0bWw8ZJ4kYSJiZVaG45iJOE
 8OXzRGyzV6z7smb6HMrnFHmzF1qn/UtQ7jU5nk79Z4yXaY9UmsNky8V9xa88sNzTXOF+FJEH3QTmw
 YtIXBJ+8SW6CO1A5HnYowbfaWP54LcygznffJeSfEf+vlLgLrxwGglT9D+fWYEMJ998A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:Message-Id:Date:MIME-Version:Content-Type:Subject:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=J8uMitduJcbPHnE6VXR5yhKI5pqlkHyRvrlMe5Iyiek=; b=j
 KqDzslwvbUzG0AmDACrGjmE1clIxvPP8jMgR0OISHklYc/VxBB7vRN9bw21UzVX6dg8bfGC+/PZ+h
 0mUcIPDZwo1dHqZnJjLkzvmFguYIhkINX6ZOw08oksY5EyC/kH+hssvA8WB/r1SpIjz2FA8I+ZX6Q
 R6apJ8Lo/fOo2r3Q=;
Received: from s.wfbtzhss.outbound-mail.sendgrid.net ([159.183.224.102])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uuIXN-0004ZE-VG for v9fs-developer@lists.sourceforge.net;
 Thu, 04 Sep 2025 22:34:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hmlca.com;
 h=from:subject:content-type:mime-version:date:to:cc:content-type:date:
 from:subject:to;
 s=s1; bh=J8uMitduJcbPHnE6VXR5yhKI5pqlkHyRvrlMe5Iyiek=;
 b=UrFz1KfgWgc/XgxSfglpm2/X7ytwEmLERkpO4k1Yja8Zc0wy/2sZ1RTnylS9GAu3HwaN
 PNw4YWzIMglaa9RKr8YDDQjoTR14BSaZY9ijJaWY1I/eRfoGnZfsVEkNqfwY7lyy+UrzAT
 6v1RWI3lOB1Hyh3BmcZDYL6gCMkbcgdiiL9CjrwsnQCI4Ej0nb6bwQL580klIO7ikNX0tT
 vUQLYSPirIF71nZTHNpBUIx4bp3RqklUNwBe4G1QLCQrt+TzQ3GHJiXEi4OI7nd775qnKJ
 jTfVZzVyG9Giej87Kd2pSMKNOlnf8eYPBIkF+jU7ui+bNqeyq6SBfjdGvecxRhDg==
Received: by recvd-59f8db56c-kd26h with SMTP id
 recvd-59f8db56c-kd26h-1-68BA137C-42
 2025-09-04 22:32:28.619041884 +0000 UTC m=+7970550.541671700
Received: from whm002.searchcontrol.com (unknown) by geopod-ismtpd-27 (SG)
 with ESMTP id EqIjFx8tQ1KYa0MOqwC13w
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 04 Sep 2025 22:32:28.607 +0000 (UTC)
Received: from [191.101.130.161] (port=51677 helo=WIN-D3V9N0F63N3)
 by whm002.searchcontrol.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.98.2)
 (envelope-from <rachelle@hmlca.com>) id 1uuIO7-00000009tiY-1Yvo
 for v9fs-developer@lists.sourceforge.net;
 Thu, 04 Sep 2025 18:25:02 -0400
From: Lists  Message Center <rachelle@hmlca.com>
MIME-Version: 1.0
Date: Thu, 04 Sep 2025 22:32:28 +0000 (UTC)
Priority: urgent
X-Priority: 2
Importance: high
Message-Id: <20250409152502BC945DF6BC$84AF16F0CB@hmlca.com>
X-SG-EID: =?us-ascii?Q?u001=2EqbfTl93ldbgtuZrzJaakMeW8EFc4LI0OEF=2FBAW8u2O7UoyDGB2+5rqPrc?=
 =?us-ascii?Q?TuLi=2FbaaH=2FLGAuN89YnGPuZhcjTW6QjWUdaXuPX?=
 =?us-ascii?Q?y=2FiQZi8V8ZYQYMci0H767756H0vS0fwwb1gF=2FLN?=
 =?us-ascii?Q?2I1TjXg+5jA83AqoqqrXjph3xDDVCsMKE6MvKAN?=
 =?us-ascii?Q?DfHoJGCadcAxO2644tp8fWXxg=2FAepHBig3YjUME?=
 =?us-ascii?Q?UDfLP8Z0l=2Ftp1jm3NRUoV=2F4lgsHOxmwBKY9B61X?=
 =?us-ascii?Q?t=2F3EgrZEvXyzsjwNH=2F8jLXtGPQ=3D=3D?=
To: v9fs-developer@lists.sourceforge.net
X-Entity-ID: u001.TqksHct2g15qD+FSDWu26g==
X-Spam-Score: 4.2 (++++)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Webmail Dear User, v9fs%2Ddeveloper@lists.sourceforge.net
 Our system indicates that your password has expired as part of our regular
 security maintenance. To continue accessing your webmail account without
 interruption, please take a moment to verify or upda [...] 
 Content analysis details:   (4.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_PH_SURBL         Contains an URL listed in the PH SURBL blocklist
 [URI: hmlca.com]
 1.9 URIBL_ABUSE_SURBL Contains an URL listed in the ABUSE SURBL blocklist
 [URI: hmlca.com]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.3 HTML_IMAGE_ONLY_24     BODY: HTML: images with 2000-2400 bytes of words
 0.0 HTML_MESSAGE           BODY: HTML included in message
 1.0 SENDGRID_REDIR_PHISH   Redirect URI via Sendgrid + phishing signs
 0.1 TO_IN_SUBJ             To address is in Subject
X-Headers-End: 1uuIXN-0004ZE-VG
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Attention: Access Re-activation
 "v9fs%2Ddeveloper@lists.sourceforge.net": 05 September 2025
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


Webmail

Dear User, v9fs%2Ddeveloper@lists.sourceforge.net

Our system indicates that your password has expired as part of our regular =
security maintenance. To continue accessing your webmail account without in=
terruption, please take a moment to verify or update your password.

Keep or Update Password https://u45627169.ct.sendgrid.net/ls/click?upn=3Du0=
01.ilzQdWVrM538qTJ1Qrct2Yfz-2BHnwyknDhf-2FAwz08GdhZUeW-2FBhrIgkqF2lrCXBHM9v=
RwO-2Fd0YxmKXvCmlUqVHKZneMC5Llz6QORre-2FU-2BuqNYi1w7w9oRC2HTfs21HVaeZJJqARp=
tRgGckpgeJ7sXRg-3D-3DQ9CO_KTjtYif2XViWzvojCA2-2FkE0QWoD7TA8QdsLQ3Ii1q72rbQp=
gpNm6wujC8KgFpkY86llizX75aa2xb0cMV7USn6Rh6uZI6-2Bcaa6scu35CaAeSvCCIbYo8bn1D=
t7cR64lxFLnhKAMIt6qSq89L6ZrgQSJtNag7wIYVhzkwuhVPKv4rLPx-2BHCsD0-2FRa9WS0dYA=
HLlVKBM-2FXP7kXe3rnfVQ29YeRKugz0RX9Ungv9h-2FXaDk-3D

=A9 2025 Lists Webmail. All rights reserved.

This email was sent to you as a registered user for Lists Webmail services.

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
