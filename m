Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5103B5261BC
	for <lists+v9fs-developer@lfdr.de>; Fri, 13 May 2022 14:22:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1npUJa-0005De-V1; Fri, 13 May 2022 12:22:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <support@imsulwenavimumbai.com>) id 1npUJO-0005DR-Fp
 for v9fs-developer@lists.sourceforge.net; Fri, 13 May 2022 12:22:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:From:Date:Subject:To:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WxA/714JVITpi9qwveUUJ8oGGBhGnv/JVQlLuN3LUvc=; b=WWWiAYp7dfjzTqXjJnuCbzb2Kf
 eG2tA/4LBynaCwaXuCz1jAHKxrBu5uxTTZCsuF8YCy4qWF4UzyPz5p2dehP5NmDaJ4JgwXzAUzf0R
 7IM0lPb9TYeFs0V0psbOWuHgYMa/dEZ2cdkU8Zjo6Pl6L5zXnUCImigM4H58eG0JA94w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:From:Date:
 Subject:To:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=WxA/714JVITpi9qwveUUJ8oGGBhGnv/JVQlLuN3LUvc=; b=B
 cR6luUvpChrTJFMvVIrtzW2syANIeiP+/ucMua4CoWbx/hmwitL/Rl19uGXrwCnqFmbFHLP7Oo+5b
 t6GRL2A4973jvUsiYfAZc5egvZoN/AfEFUK7bmGUOUI0QxGKSlVtSmM0J4xIufE/W2xUpsz39zQUh
 yD9Ic48tk76HMskE=;
Received: from wp4.hostingraja.info ([103.148.156.35])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1npUJL-0006ny-UU
 for v9fs-developer@lists.sourceforge.net; Fri, 13 May 2022 12:22:25 +0000
Received: by wp4.hostingraja.info (Postfix, from userid 1041)
 id 3B7481BFC60A; Fri, 13 May 2022 17:00:24 +0530 (IST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=imsulwenavimumbai.com; s=default; t=1652442665;
 bh=WxA/714JVITpi9qwveUUJ8oGGBhGnv/JVQlLuN3LUvc=;
 h=To:Subject:Date:From;
 b=rgO3ssgYx06PWdf2Y5o0lQMBrJLztfgidkcJEVwJUWxMDXLF8liQ7sFUPFr919VXg
 ARknDlkuV3HDXKKD0D1OenH1tsV3lrOU/G4MufKBwVZDlt2THQovTs2Llb9lgj4Hro
 i1Ew+PtoVRQyXen1hfuLNg8yF4e2UW0RqzIoCsYI=
To: v9fs-developer@lists.sourceforge.net
Date: Fri, 13 May 2022 11:30:24 +0000
From: "lists.sourceforge.net" <support@imsulwenavimumbai.com>
Message-ID: <0929bad15cdd5107322efbb941be8c8b@imsulwenavimumbai.com>
MIME-Version: 1.0
X-Spam-Score: 3.4 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This message is from the service provider
 lists.sourceforge.netYour
 password will expire today. Use the buttons below to keep or update your
 current credentials.Validate to Avoid being Locked outDiscl [...] 
 Content analysis details:   (3.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
 [103.148.156.35 listed in dnsbl-1.uceprotect.net]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: rolhevan.online]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [103.148.156.35 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.0 PDS_OTHER_BAD_TLD      Untrustworthy TLDs
 [URI: rolhevan.online (online)]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1npUJL-0006ny-UU
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?q?=E2=9C=89_Email_Notification_v9fs-deve?=
 =?utf-8?q?loper=40lists=2Esourceforge=2Enet?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

This message is from the service provider lists.sourceforge.netYour password will expire today. Use the buttons below to keep or update your current credentials.Validate to Avoid being Locked outDisclaimer: This email and its contents are are for use only by the recipient


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
