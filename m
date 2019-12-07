Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D01115C1E
	for <lists+v9fs-developer@lfdr.de>; Sat,  7 Dec 2019 12:58:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1idYiu-0001AJ-7t; Sat, 07 Dec 2019 11:58:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rdap@ripe.com>) id 1idYir-00017P-JA
 for v9fs-developer@lists.sourceforge.net; Sat, 07 Dec 2019 11:58:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Date:From:To:Subject:MIME-Version:Content-Type:
 Sender:Reply-To:Message-ID:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yZ6YDLHCHv7IG68zMBRwlnO2CVWGumfeFUokH+qr3ho=; b=D5dsUUWiGZtO4iw39/NsxWPc3J
 Kktz7q0XXLZk5KMWdfmhdUNgvuX3Lz5UmD8ozxZ+CXP0s29dsAcWcgg53m7oFX2Q/y/Myfdk26JGb
 nYJv00WU2NIee6uF7KWBSQjNk2bzpMn2kDVvnkvkArguNxPkd93skVQHF3Ilzg9ezbvE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Date:From:To:Subject:MIME-Version:Content-Type:Sender:Reply-To:Message-ID
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=yZ6YDLHCHv7IG68zMBRwlnO2CVWGumfeFUokH+qr3ho=; b=M
 0vsfolX7OCRzcot5ZEGwCg6sGLk0TQmh4hVdb5H5g8jmdKOVqdA4zQ+KSzl3t6qCxyyKGjmHGS2eB
 8XgXQlWs3gnqgJ1ksYzG2dimd2nkEcINEtouU8/BM7pv2eYp8moC0cpE7w0ZM2UZHRGRoVqVbZ5k4
 oEYEp/OXJMN77Wgo=;
Received: from sm13869.domain2020.com ([103.215.138.69])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1idYip-00BYr3-05
 for v9fs-developer@lists.sourceforge.net; Sat, 07 Dec 2019 11:58:05 +0000
Received: from sm13848.ffhb.com.my (sm13848.ffhb.com.my [103.215.138.48]) by
 sm13866.domain2020.com with SMTP (version=TLS\Tls12
 cipher=Aes256 bits=256); Sat, 7 Dec 2019 18:42:39 +0800
Received: from [23.227.196.18] (18.196.227.23.static.swiftway.net
 [23.227.196.18]) by mail.ffhb.com.my with SMTP (version=TLS\Tls
 cipher=Aes256 bits=256); Sat, 7 Dec 2019 18:42:24 +0800
MIME-Version: 1.0
To: v9fs-developer@lists.sourceforge.net
From: "E-mail server" <rdap@ripe.com>
Date: Sat, 07 Dec 2019 02:55:43 -0800
X-Spam-Score: 5.6 (+++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: grupoestrellapolar.es]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.5 RAZOR2_CHECK           Listed in Razor2 (http://razor.sf.net/)
 1.5 RAZOR2_CF_RANGE_51_100 Razor2 gives confidence level above 50%
 [cf: 100]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [23.227.196.18 listed in dnsbl.sorbs.net]
 1.0 MISSING_MID            Missing Message-Id: header
 0.1 FSL_BULK_SIG           Bulk signature with no Unsubscribe
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1idYip-00BYr3-05
Content-Description: Mail message body
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Re-confirm v9fs-developer@lists.sourceforge.net
 account
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: v9fs-developer-bounces@lists.sourceforge.net
Message-Id: <E1idYiu-0001AJ-7t@sfs-ml-1.v29.lw.sourceforge.com>


    Email Server
 =

 We noticed that your v9fs-developer@lists.sourceforge.net, have been disco=
nnected from sending and receiving mails.

We urge you to re-confirm if your account is still active
on our server to officialy unlock it to our default settings. =

   Re-confirm account =

 You're getting this email to make sure it was you. =

 Thanks,
Email Account Team =


   =

 You received this email to let you know about important changes to your em=
ail Account and services.
=A9 2019 All Rights Reserved.

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
