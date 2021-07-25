Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A4BCA3D4CF8
	for <lists+v9fs-developer@lfdr.de>; Sun, 25 Jul 2021 11:47:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Message-Id:Content-Transfer-Encoding:
	Content-Type:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:Date:To:Content-Description:MIME-Version:
	Sender:Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:
	Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rJ4LZHhc9rKf/IdSf2NXWVTkXNauMQ+DLYktF9/nz4k=; b=PBa5IlhIBYqANpkz+PFLxlYlMZ
	GH6W3n8AeH+fgXptEyx3Lpo9x+xMGFwXz6g0R7rTSCiSEdWI6P7uRVDoW0mBVrZ9j6kldcZ1Om+v6
	dK9AxptB+ATwY780I2DUxMuoNOLAYuZ4t/Y7E74gLUMQUuw0ciMllgqO0yCqwnYvUiTg=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1m7ajT-0006ZT-HE; Sun, 25 Jul 2021 09:47:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sales@j-hk.live>) id 1m7ajS-0006Z8-DL
 for v9fs-developer@lists.sourceforge.net; Sun, 25 Jul 2021 09:47:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Reply-To:Date:From:To:Subject:Content-Description:
 Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Message-ID:Cc:
 Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:
 Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZPH/l/61k1IsLTVm0aHg9Rga25P/E0lkD9u6lItHynA=; b=HLz3DHrJg2/tYEUQs4oUKPDP9g
 C3GbQxHh1URMutqYXkbGC7600PJqzzDfVwfZUMTZ9X6Yh9MMe952gxHHUJRkBbOgLI8aqfZZTRRvY
 CEmhPojDGbMiUUwmbAVTO5BpKHnranQQQPh2ZmGfJaKeTkxVOM4es7uEAfEd8wNXImz4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Reply-To:Date:From:To:Subject:Content-Description:
 Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Message-ID:Cc:
 Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:
 Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZPH/l/61k1IsLTVm0aHg9Rga25P/E0lkD9u6lItHynA=; b=JBci/ytm9E7/xFX6+3mZAUPdho
 lvhozB7SUwJ/jjrmoaBonj6Fw5BQ24ZR7wRBAdMx2b+VO0sWAtxwcArUGLWTdO4WtScWElabOIrav
 PNAi6GTEmRyjq2/bOUrE79rncvXsscX2AihgAU4IjQA+WoRWo3ziLMC+eP+yJ38HR5HU=;
Received: from j-hk.live ([106.75.224.197])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m7ajR-0006Zp-6M
 for v9fs-developer@lists.sourceforge.net; Sun, 25 Jul 2021 09:47:38 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=default; d=j-hk.live;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Content-Description:Subject:To:From:Date:Reply-To;
 i=sales@j-hk.live; bh=IjGukt2p5Jium9DbzB+oL73Kmto=;
 b=U2099wtE/QMEcJeiEJft9bMwa3DTds2oz0+UvhNFjplEhw9Xm6HM9QfA9wNsT/jAlDpCjzj9wYRJ
 q/yQ6/HxqiXD2U+weokytKVMT42jMoQaSBtFWL4GnaNwFFTzMHNRB+tKitAbtqcaSlMqGhUOn82+
 ew3Mui1rbdG9mfh0SFQ=
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=default; d=j-hk.live;
 b=tZGDyMubzIUz4k93bPFeN436Y58rTvu1pgNmG108+bTmePCmExsgcMFhAY+RyEfdct+w8f5zRUNz
 6MXBvKTwHF68YBfr0e4ebtsZwOWrldCvQXXGTFWdryRB045NdiuFYigjQ+h7X2gGOjaCn0R6oN7Y
 aDYVr1aoqIkGq1VBdS0=;
MIME-Version: 1.0
Content-Description: Mail message body
To: v9fs-developer@lists.sourceforge.net
Date: Sun, 25 Jul 2021 17:47:29 +0800
X-Spam-Score: 7.2 (+++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 (cjacksonjr494[at]gmail.com)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.9 URG_BIZ                Contains urgent matter
 1.0 MISSING_MID            Missing Message-Id: header
 2.3 DKIMWL_BL              DKIMwl.org - Blocked sender
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
 0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1m7ajR-0006Zp-6M
Subject: [V9fs-developer] br
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
From: sales--- via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: cjacksonjr494@gmail.com
Cc: sales@j-hk.live
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net
Message-Id: <E1m7ajT-0006ZT-HE@sfs-ml-1.v29.lw.sourceforge.com>

Is Your Email address active? I sent you a message earlier and I need your urgent response extremely important contact me Via EMail
----------------------------------------
Ist Ihre E-Mail-Adresse aktiv? Ich habe Ihnen vorhin eine Nachricht gesendet und brauche dringend Ihre dringende Antwort. Kontaktieren Sie mich per EMail


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
