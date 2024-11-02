Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F2DA9BA150
	for <lists+v9fs-developer@lfdr.de>; Sat,  2 Nov 2024 16:59:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1t7GWv-0008Ti-QR;
	Sat, 02 Nov 2024 15:59:14 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sn0w58oe@schneeschuh-center.de>) id 1t7GWt-0008Tc-RP
 for v9fs-developer@lists.sourceforge.net;
 Sat, 02 Nov 2024 15:59:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Date:Message-Id:Content-type:MIME-Version:From:
 Subject:To:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XUANOyZIF+0EWTBMWrKFFoE8fy72MwO9YVa/zawXP64=; b=Jl67VsrVDNDMB1iqc3IHDN3oul
 nSO2nASMFg8kJuN9Tjem7skcH8pTfR99gIzKrMsXIbFA1J3Qr5XNKvuGeVM8JtmHhKqEOHxWCzlSE
 KRDyqdo1E4HAMldjpSFQ0kb+YfPnQyShBMaEVpBqjtE6g9yplRslxcI1j5FPqbBdkCUU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Date:Message-Id:Content-type:MIME-Version:From:Subject:To:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=XUANOyZIF+0EWTBMWrKFFoE8fy72MwO9YVa/zawXP64=; b=D
 IfHDjy1SPpNHpp+vnmvwiCjIz59U+N6CO8F69VWbWGx4ppqtTRhvaVwYljJKU+b2t5aS/e7KSdyoT
 CqFVBUwu1f8OHciajNipNrRqBoyk1YZ5k37pB8RHH3WSxeOWuondgISHiS4oOkZ788Jo5SWhv9OWY
 yha1SZ/cyvXvu5jo=;
Received: from [83.169.46.6] (helo=kronos.alpine-snow.de)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t7GWs-0004Hd-HA for v9fs-developer@lists.sourceforge.net;
 Sat, 02 Nov 2024 15:59:12 +0000
Received: by kronos.alpine-snow.de (Postfix, from userid 10000)
 id 1761AC2A16; Sat,  2 Nov 2024 14:11:09 +0100 (CET)
To: v9fs-developer@lists.sourceforge.net
X-PHP-Originating-Script: 10000:newsletters.php
From: =?UTF-8?B?TGlkbyBMaXF1aWQgU3Rha2luZyDwn5uh?=
 <sn0w58oe@schneeschuh-center.de>
MIME-Version: 1.0;
Message-Id: <20241102140448.1761AC2A16@kronos.alpine-snow.de>
Date: Sat,  2 Nov 2024 14:11:09 +0100 (CET)
X-Spam-Score: 1.3 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: stETH Airdrop Rewards Portal You've been selected for a
 special
 reward worth up to 100 ETH! This is your chance to enhance your crypto
 portfolio
 with an exclusive stETH airdrop from Lido Liquid Staking. 
 Content analysis details:   (1.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 T_TVD_MIME_NO_HEADERS  BODY: No description available.
 0.0 BOGUS_MIME_VERSION     Mime version header is bogus
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1t7GWs-0004Hd-HA
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?W/CflKVFeGNsdXNpdmUgSW52aXRhdGlvbl06?=
 =?utf-8?q?_Claim_Your_Limited-Time_stETH_Airdrop!=E2=9A=A1=23N59315871580?=
 =?utf-8?q?8=2Edoc_02=2E11=2E2024_16=3A11?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
