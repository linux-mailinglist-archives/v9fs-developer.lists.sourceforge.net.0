Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 348EDBCDB9A
	for <lists+v9fs-developer@lfdr.de>; Fri, 10 Oct 2025 17:11:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:MIME-Version:To:Message-Id:Date:From:Sender:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=m4XKU6O354hc4pfuWpenxxiPxQ8jfSIEEBOMSvU4tVo=; b=HY7u7XuuzO4fEUXURw2oMiB916
	xPA4X/ux5mlLFCiAHZoyuwJTd/y5WuqhHF65qlI4IuJTKtYEofPRSiUakzoZJGqBFk90GILJ8EL9d
	Bh3iWD4joy7Tv7tRu7kzid2L9Qd/UI5sYF46kDMvB2d5ehjMiTxcAtUhhPGR30itDicI=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1v7Em1-0002vc-Hx;
	Fri, 10 Oct 2025 15:11:13 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <CDR_Peter=cdrm.cnmfgedm.com@bounces.cdrm.cnmfgedm.com>)
 id 1v7Em0-0002vW-TI for v9fs-developer@lists.sourceforge.net;
 Fri, 10 Oct 2025 15:11:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-Unsubscribe:To:
 Sender:Reply-To:Message-Id:Subject:Date:From:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=alYuGxL9dNOis9GALLazxyvWnAWNjgXjqGRUyrMfUb8=; b=M/1wnL8a3k9lOjKvlMtep5mogQ
 /bFbLpEj1Mc+Kc3QGWVQvq7OzL4sq/x869GuSoRoX/5YzPlLJaxgzrJKp5SdpYGaaB/PEXhtCTUq8
 XLY8J88sWlIgou8BMvcFmMcGDTvdMP3XYOl4rvCzM4WidejFbrs1KFwFQUp5nC1ho6Vw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-Unsubscribe:To:Sender:Reply-To:Message-Id:
 Subject:Date:From:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=alYuGxL9dNOis9GALLazxyvWnAWNjgXjqGRUyrMfUb8=; b=Rzh5rmoHARpi
 Sy3DIE5W5/GAT1Jy2R3mBM8+U8mK6mrWGB3sq5mfGrJcFQzjAco1+sMQxEpwxSxrljOhedUaqJWyU
 NZPPwcyhYCT16LowEZVL0XPdOePwTrxTt6HZAnQHLvHCO55bH4dxsLM2qsQ6mguGUZGNK0G1iWZhO
 2uToE=;
Received: from np95.mxout.mta3.net ([216.169.98.95])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v7Ely-0007UI-Bm for v9fs-developer@lists.sourceforge.net;
 Fri, 10 Oct 2025 15:11:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=cdrm.cnmfgedm.com; s=api;
 c=relaxed/simple; t=1760109058;
 h=from:date:subject:reply-to:to:list-unsubscribe:list-unsubscribe-post:
 mime-version; bh=alYuGxL9dNOis9GALLazxyvWnAWNjgXjqGRUyrMfUb8=;
 b=PL1tc/LDnb+XaMmLbEGPEXfZPkX7bCU0OCDmp4+ZFDdOQxWP+2ldo56MMcAZxGHI0FVOc2YahTe
 fF6jKgcvQ4ChBotqn7Wh5k3JjCK7GhD7E0vtjdSoIp+SRoiEQOH9FejTQNXzSduHKyjmYVYjr+aBa
 RvMcuFl4vLVH5rTmLzo=
DKIM-Signature: v=1; a=rsa-sha256; d=elasticemail.com; s=api;
 c=relaxed/simple; t=1760109058;
 h=from:date:subject:reply-to:to:list-unsubscribe:list-unsubscribe-post;
 bh=alYuGxL9dNOis9GALLazxyvWnAWNjgXjqGRUyrMfUb8=;
 b=HApJ1oeAa5RYhUlwddexfmX9tL4hIs2gAUssdyQupHBLbn6GChLbHxRfTFhMYMl8FnTmfbNosnE
 JEBU8mGE0nIv6I10TZuTKNMVPCy/9BckxkePD7thj639nTrKCIagGFjikmO6Odvc87+yV4tAyndgR
 CerEI/8elbYl80Jh1PE=
From: Peter Lee <CDR_Peter@cdrm.cnmfgedm.com>
Date: Fri, 10 Oct 2025 15:10:58 +0000
Message-Id: <4urfdgftd1zm.-B9MIwDc1_PrVSlpRHIWmA2@tracking.cdrm.cnmfgedm.com>
To: "v9fs-developer@lists.sourceforge.net"
 <v9fs-developer@lists.sourceforge.net>
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-Msg-EID: -B9MIwDc1_PrVSlpRHIWmA2
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Dear Purchaser: I'm PETER FROM CDR PRECISION MACHINING, a
 CNC precision machining factory in China with 16+ years of experience,
 including
 10+ years working closely with European and U.S. clients. We [...] 
 Content analysis details:   (-0.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.169.98.95 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1v7Ely-0007UI-Bm
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Hi, Small Batch Precision CNC Parts Quotation
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
Reply-To: Peter Lee <sales@cdrprecisioncnc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Dear Purchaser:
I'm PETER FROM CDR PRECISION MACHINING, a CNC precision machining
factory in China with 16+ years of experience, including 10+ years
working closely with European and U.S. clients.
We focus on supporting MECHANICAL ENGINEERS AND COMPANIES THAT NEED
PRECISION PARTS, especially for SMALL-BATCH MACHINING PROJECTS. Our
expertise lies in COMPLEX PARTS, PROTOTYPES, AND LOW-VOLUME
PRODUCTION.
OUR ADVANTAGES:
*
5-AXIS & MULTI-AXIS CNC MACHINING
*
RAPID QUOTATIONS & COST-EFFECTIVE SOLUTIONS
*
MATERIALS & SURFACE TREATMENTS TO INTERNATIONAL STANDARDS
*
RELIABLE QUALITY CONTROL for EU & U.S. requirements
*
FAST DELIVERY and adaptable production schedules
*
COMPETITIVE PRICING WITH CONSISTENT QUALITY
If you'd like, I can PREPARE A QUOTATION based on your drawings, or
share machining advice on TOLERANCES, MATERIALS, OR COST OPTIMIZATION.
You're welcome to visit our factory at any time.
For more information about our capabilities, please visit our website:
CDRPRECISION.COM
THANK YOU / GRAZIE / DANK / MERCI
Best regards,
PETER LEE
sales@cdrprecisioncnc.com
Sales Director at CDR Machining
Customization | Development | Reliability
Unsubscribe
[/http://tracking.cdrm.cnmfgedm.com/tracking/unsubscribe?d=QNt5FgzfDG_vVb5CiNZJAkbBI_PzD6E4klp-jYSeo8jFOfLmYZo66UuE1e6fZxt8LHbD7ZTghaZfEBS_a0Skl4KgvvYXNkDLeICq2NkfFYialxIyE6Gn1gLRK-Eq4v8bJGDq-jTYDDuIJ35NId-x76N4D3iH0IxKqvkaTeDZjkiboDhxtmmjAgve4FCbRJ8ztCFPzeNVeU4PbOzDNsYlc4x2jE4Hf_qu9Y2LRCSUSCZDnN6HQqGB_BsOKX3j6Z62qf99I5V_q9CMuvr50zHwMHUCUkKtbHne10XOj827uuMpFi_xJCyzaiv6eGkZkBEHE6EjYwTEEUPPa8T6uNSitSvf0QYAIpDjcrnukCMi-iXw_sk5hXC0n9dUvK6JvmaTrYcWSbI5I4UrIN0xyQixJZCaWde9cklpb34eFLnXPesTO5vvrxawnafhORt16PhZn5bazf9NBxMEhsfrq2KeLudnVhYBa1MI-VI7Fex1JDnYCeQxGLb4SPSEyVNFM9MFGiGvM9IgouC6YqkdpfAcmTU1]
_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
