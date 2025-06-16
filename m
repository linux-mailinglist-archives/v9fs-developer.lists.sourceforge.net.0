Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 86EA4ADA79E
	for <lists+v9fs-developer@lfdr.de>; Mon, 16 Jun 2025 07:25:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Message-Id:Content-Transfer-Encoding:
	Content-Type:Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Content-Description:Date:From:To:
	MIME-Version:Sender:Cc:Content-ID:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rKU1joMm71pKMrHEJVJU1rgzBR6JYgEne+BJVM3E3Eg=; b=iA9ZT6eVP0JU/4NDE34JhUn78o
	dHYxgT7BMk1bL97HqugOaytlLgwOroGymZnUO3Yz0eMePjVtZQcNqCoQZAejjR8Yxp0F10cTrT9TQ
	33Dc6tjjtpWaHv8WOG9Zf08oVmsY8MmG1VzWpBXJPkQ5RrIvtTYdb5BU4Vm06SVdvOSU=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1uR2Lt-0006bm-RV;
	Mon, 16 Jun 2025 05:25:49 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <fernando@cremx.org>) id 1uR2Ls-0006ba-Ss
 for v9fs-developer@lists.sourceforge.net;
 Mon, 16 Jun 2025 05:25:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Reply-To:Date:From:To:Subject:MIME-Version:
 Content-Type:Sender:Message-ID:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1VQd//u8L0/ky0LcHg2m4dDfDmndCncfLFb4hyrccYM=; b=F37EuoUCbDEBhaIw2B5fH7UEXc
 Ku4ZlwlTqg36zCNk8o1zU19oiL+W4thvFA2y4V3UUnjSDOpVXwTnOS5yQpVFVikk05HSguP8i1NXS
 rZBele3QGXvJBy9pk4Vrq3PLyhb7LL5erBNomY0IXcYPSuNsfHDSzQlovYEkoZ1AV/w8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Reply-To:Date:From:To:Subject:MIME-Version:Content-Type:Sender:Message-ID
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=1VQd//u8L0/ky0LcHg2m4dDfDmndCncfLFb4hyrccYM=; b=Z
 SuANKSvDIKi+uGUkV7hZ2iPS9g2j/bYf6Dhs9ssIfbMO6QGPxxO/djY0uLksnoS+KucGijMrxllEI
 CMd6uVWx8IA+DK94U/VmQn3B9Ylnqu4uvtWSqZbP+f+Mhy5eigOVZDf1CfEJmFCpzgz6KEEgwdUUv
 rEHIAeotMEK+Y0CE=;
Received: from dns26.sysop26.com ([72.52.252.17])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uR2Ls-0004UB-G7 for v9fs-developer@lists.sourceforge.net;
 Mon, 16 Jun 2025 05:25:48 +0000
Received: from
 instance-20250615-001002.us-west2-b.c.optimal-weft-462802-q8.internal.
 (145.141.94.34.bc.googleusercontent.com [34.94.141.145])
 by dns26.sysop26.com (Postfix) with ESMTPA id AC7A37C67BC6
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 15 Jun 2025 23:15:00 -0600 (CST)
Authentication-Results: dns26.sysop26.com;
 spf=pass (sender IP is 34.94.141.145) smtp.mailfrom=fernando@cremx.org
 smtp.helo=instance-20250615-001002.us-west2-b.c.optimal-weft-462802-q8.internal.
Received-SPF: pass (dns26.sysop26.com: connection is authenticated)
MIME-Version: 1.0
To: v9fs-developer@lists.sourceforge.net
From: "Mr.Raymond" <fernando@cremx.org>
Date: Mon, 16 Jun 2025 05:14:59 +0000
X-PPP-Message-ID: <175005090108.157984.17872544129112493427@dns26.sysop26.com>
X-PPP-Vhost: cremx.org
X-Spam-Score: 7.4 (+++++++)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-2.hosts.colo.sdot.me",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Guten Tag v9fs-developer@lists.sourceforge.net Ich hoffe,
    es geht Ihnen gut. Mein Name ist Raymond Royals und ich möchte Ihnen ein
    wichtiges Geschäftsangebot unterbreiten. Bei Interesse an weiteren [...]
    
 
 Content analysis details:   (7.4 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.1 MISSING_MID            Missing Message-Id: header
  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
                             [robertroyals007(at)gmail.com]
  0.0 HTML_MESSAGE           BODY: HTML included in message
  3.5 DOS_BODY_HIGH_NO_MID   High bit body and no message ID header
  1.0 HK_NAME_MR_MRS         No description available.
  2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Headers-End: 1uR2Ls-0004UB-G7
Content-Description: Mail message body
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] 
 =?utf-8?q?Gesch=C3=A4ftspartnerschaft_f=C3=BCr?=
 =?utf-8?q?=28v9fs-developer=40lists=2Esourceforge=2Enet=29?=
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
Reply-To: robertroyals007@gmail.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: v9fs-developer-bounces@lists.sourceforge.net
Message-Id: <E1uR2Lt-0006bm-RV@sfs-ml-2.v29.lw.sourceforge.com>

 =

 Guten Tag  v9fs-developer@lists.sourceforge.net
 Ich hoffe, es geht Ihnen gut. Mein Name ist Raymond Royals und ich m=F6cht=
e Ihnen ein wichtiges Gesch=E4ftsangebot unterbreiten. Bei Interesse an wei=
teren Informationen antworten Sie bitte.
 Mit freundlichen Gr=FC=DFen,
Sir Raymond Royals

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
