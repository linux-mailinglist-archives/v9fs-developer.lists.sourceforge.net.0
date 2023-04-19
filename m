Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F4C6E75D9
	for <lists+v9fs-developer@lfdr.de>; Wed, 19 Apr 2023 10:59:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pp3ev-00087Y-M5;
	Wed, 19 Apr 2023 08:59:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ykdtjcfg@hdtrf.com>) id 1pp3et-00087R-Bm
 for v9fs-developer@lists.sourceforge.net;
 Wed, 19 Apr 2023 08:59:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Date:Content-Transfer-Encoding:Content-Type:To:
 Subject:From:Sender:Reply-To:Message-ID:Cc:MIME-Version:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qHTT99eLYeCewAPbARgeb4eHz3zuwI2GxaiCDqrPsuA=; b=aDhcikZPg3PTI0/jSvEGDomTZd
 R9KKasPc8+OJpxlSMOYX46/eSjZC7q1sxuZQLDIyJ+3+50r+Nu7z5QtPbcIwFHnC4JKajTTHs6SOH
 jrejYt+gcwNOAo8Nuuvg00YL0dFpL4QP/Uo5oswJDyafhYhaJD29vFHS3iACMDjpC/z8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Date:Content-Transfer-Encoding:Content-Type:To:Subject:From:Sender:
 Reply-To:Message-ID:Cc:MIME-Version:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qHTT99eLYeCewAPbARgeb4eHz3zuwI2GxaiCDqrPsuA=; b=mMCaC0xYULPVJy5oll/b096BW8
 00dO0dS1psK1m8EdcJ0eZJ8DI1fOtgOT50KvSrupFDLhTUXffCK+TzWqq7gn6jx2AnwyHyt1mT84y
 WHxSdWiE34sH/UuzGrp4BoXGEMeRItYXWJuN/XJ31s3N/mPRiyFB+Cn7N39THpHAhXTM=;
Received: from [119.41.206.113] (helo=hdtrf.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1pp3es-0000TO-TP for v9fs-developer@lists.sourceforge.net;
 Wed, 19 Apr 2023 08:59:24 +0000
From: ykdtjcfg@hdtrf.com
To: v9fs-developer@lists.sourceforge.net
Date: Wed, 19 Apr 2023 16:59:26 +0800
X-Priority: 3
X-Mailer: Foxmail 4.1 [cn]
X-Helo-Check: bad, Forged Random Domain (hdtrf.com)
X-Spam-Score: 7.4 (+++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  代开各地行业《增值税》发票，点数优惠、支持验后付款 木子 l3564999872（微信同号）
    
 
 Content analysis details:   (7.4 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 HK_RANDOM_ENVFROM      Envelope sender username looks random
  0.0 HK_RANDOM_FROM         From username looks random
  0.5 FROM_LOCAL_NOVOWEL     From: localpart has series of non-vowel
                             letters
  3.6 RCVD_IN_PBL            RBL: Received via a relay in Spamhaus PBL
                             [119.41.206.113 listed in zen.spamhaus.org]
  0.7 RCVD_IN_XBL            RBL: Received via a relay in Spamhaus XBL
  0.4 NO_DNS_FOR_FROM        DNS: Envelope sender has no MX or A DNS records
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.8 DKIM_ADSP_NXDOMAIN     No valid author signature and domain not in
                             DNS
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.1 MISSING_MID            Missing Message-Id: header
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  0.0 TVD_SPACE_ENCODED      Space ratio & encoded subject
  0.0 TVD_SPACE_RATIO_MINFP  Space ratio (vertical text obfuscation?)
X-Headers-End: 1pp3es-0000TO-TP
Subject: [V9fs-developer] =?gb2312?b?tPq/qreixrFsMzU2NDk5OTg3Mg==?=
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
MIME-Version: 1.0
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net
Message-Id: <E1pp3ev-00087Y-M5@sfs-ml-4.v29.lw.sourceforge.com>

Cgq0+r+quPe12NDQ0rWhttT21rXLsKG3t6LGsaOstePK/dPFu92hotans9bR6brzuLa/7goKxL7X
0yBsMzU2NDk5OTg3MqOozqLQxc2susWjqQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVs
b3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQv
bGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
