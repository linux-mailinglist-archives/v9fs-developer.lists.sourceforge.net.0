Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9893104DD
	for <lists+v9fs-developer@lfdr.de>; Fri,  5 Feb 2021 07:09:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l7uJY-0006y3-OY; Fri, 05 Feb 2021 06:09:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <raykamendes82380@adminstraweb26.tamosjuntosbrasil.org>)
 id 1l7uJX-0006xv-4l
 for v9fs-developer@lists.sourceforge.net; Fri, 05 Feb 2021 06:09:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Reply-To:From:
 Date:Subject:To:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PLvwr0+c1D+fpJ53/vI4ZDbfNaqZfTf59ipKN+t62C0=; b=JMtP3MWFBxsEoIxmyP6f0uDdQd
 CGZlKFJWrCmeyHvIXoUK1UythMJwqGtYwRT1BJxqSMURXd6NZTN+VHdPM+rJlT+Q7SQoXhlq11Rx4
 aosHF4nF6QXCUtZyN7QhVt2n20lRW32Yoa53KsfBlQyN3XrMPnBeJQsE39sMmytvyIlo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Reply-To:From:Date:Subject:To:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=PLvwr0+c1D+fpJ53/vI4ZDbfNaqZfTf59ipKN+t62C0=; b=O
 mP30dKaPYmP5xYlJD2nzbAuMXNgWxV7n5vUIGoz85cTjrrQyITyImOOuxJvB/NxqzsUX8Ku2EpysM
 ljjvDye/wN+aB4cIZZK53U7yBMz+uFs4xgZFrGrvAdWmS6jMoMd8+PXSe/LWxrAVfMtwL6Raop3xn
 7W6LOLQcwkqgBvKM=;
Received: from adminstraweb26.tamosjuntosbrasil.org ([95.85.72.114])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.92.3)
 id 1l7uJC-0004vC-Dg
 for v9fs-developer@lists.sourceforge.net; Fri, 05 Feb 2021 06:09:48 +0000
Received: by adminstraweb26.tamosjuntosbrasil.org (Postfix, from userid 33)
 id CDCBC4269B; Fri,  5 Feb 2021 05:51:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=adminstraweb26.tamosjuntosbrasil.org; s=mail; t=1612504312;
 bh=PLvwr0+c1D+fpJ53/vI4ZDbfNaqZfTf59ipKN+t62C0=;
 h=To:Subject:Date:From:Reply-To:From;
 b=NvTEL5m4rnlMVKVeM2sueDToLyav//UCIYP0Oqj9L1qnIbn9R+D0aiQVEAIHQKAYr
 y6NBqvdX6HpQBry/ZGrtDKk7kS8pMl33tUCAmjzlX9NKE5LeO8wBFxT5ABed5NA2WR
 zPZ82i1i3bYtr7lGwr+Jv8euS0/qFxekw43sNb7QYVWHos4ZLljrVxctHMLqH8xbtk
 vA5vyLZmYeVriKjG35ukS8BTM0rWwxdIXVRAB3KajUL1GWLX67YyWqhgbN5knmpPte
 ONzm911OtHs0q1jLZdL6Z1Bq/0ErBv2bmjbgG6lYGaJxKdl38QJu0yJ+JqHfn8MnJd
 EZlSWOm/8b92w==
To: v9fs-developer@lists.sourceforge.net
Date: Fri, 5 Feb 2021 05:51:52 +0000
From: Rayka  823984 <raykamendes82380@adminstraweb26.tamosjuntosbrasil.org>
Message-ID: <11ec19631dd46e49ee71a700b4843f06@95.85.72.114>
X-Priority: 3
X-Mailer: PHPMailer 5.2.4
 (http://code.google.com/a/apache-extras.org/p/phpmailer/)
MIME-Version: 1.0
X-Spam-Score: 5.8 (+++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [95.85.72.114 listed in zen.spamhaus.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?95.85.72.114>]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 TRACKER_ID             BODY: Incorporates a tracking ID number
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or identical to
 background
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l7uJC-0004vC-Dg
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Documento: Factura
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
Reply-To: Rayka 823984 <raykamendes82380@adminstraweb26.tamosjuntosbrasil.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

ZmFjdHVyYQ0KRXhtby4gY2xpZW50ZSwNCkxlIGluZm9ybWFtb3MgcXVlIHNlIHJlYWxpesOzIGVs
IHNpZ3VpZW50ZSBkb2N1bWVudG86DQpEb2N1bWVudG86IEZhY3R1cmENCiAgTiBkbyBFbnRpZGFk
OiBkamxtY3kxa1pYWmxiRzl3WlhKQWJHbHpkSE11YzI5MWNtTmxabTl5WjJVdWJtVjBEUT09DQog
IFJlZmVyZW5jaWE6IDE0MjU4NGRqbG1jeTFrWlhabGJHOXdaWEpBYkdsemRITXVjMjkxY21ObFpt
OXlaMlV1Ym1WMERRPT0NCkNsaWVudGU6IHY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdl
Lm5ldA0NCk1vbnRvIGRlbCBkb2N1bWVudG86IDEuMzUyLDQ5DQoNCkdyYWNpYXMgcG9yIGVsZWdp
ciBudWVzdHJvcyBwcm9kdWN0b3MgeSBoYXN0YSBwcm9udG8sDQpEZXNjYXJyZWdhciBGYWN0dXJh
DQpDb24gbG9zIG1lam9yZXMgc2FsdWRvcywNCjE0MjU4NDE2ODI4NTI0MTIwMjIzMTYxNDI1ODQx
NDI1ODQxNDI1ODQxNDI1ODQxNDI1ODQxNDI1ODQxNDI1ODQxNDI1ODQNCiUxNDI1ODQxNDI1ODQx
NDI1ODQxNDI1ODQxNDI1ODQxNDI1ODQxNDI1ODQxNDI1ODQxNjgyODUyNDEyMDIyMzE2MTQyNTg0
CgpuXzc4Mjk1ODYxODk0MjkyNDI0ODA3MTY1NTIxMjY3MDI4NjA0MjU2OTQ2MzUyMQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBt
YWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8v
bGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
