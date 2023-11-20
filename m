Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA3D7F21F7
	for <lists+v9fs-developer@lfdr.de>; Tue, 21 Nov 2023 01:09:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1r5EKu-0006bW-41;
	Tue, 21 Nov 2023 00:09:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <Ahmadramcfacffa@pobox.com>) id 1r5EKs-0006bP-KA
 for v9fs-developer@lists.sourceforge.net;
 Tue, 21 Nov 2023 00:09:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Reply-To:Date:From:To:Subject:Content-Description:
 Content-Transfer-Encoding:MIME-Version:Message-ID:Content-Type:Sender:Cc:
 Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:
 Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9rtpEhzr1CoFou27TA6axbRjZfRZzcCZFknU3QIUeRA=; b=SOafKjcYTfenle8vRo2fVAjRUH
 lhJvogf2AJTYTom/M/onoNXGT7e2nBd0FXHPNTY0FBzKCZ0e+46eq8xpZs00vmU9p3udV9R836w13
 hrqbdhh126U2V00nKRkUzJsa6wzQ4iznutKKc7Rvcj8HkZWgDu0mD+JlAyUT6NlBLgI8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Reply-To:Date:From:To:Subject:Content-Description:
 Content-Transfer-Encoding:MIME-Version:Message-ID:Content-Type:Sender:Cc:
 Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:
 Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9rtpEhzr1CoFou27TA6axbRjZfRZzcCZFknU3QIUeRA=; b=EyA87TWA9wfNdCUBkUhOZ0x6DZ
 kF5Lzid7uvtOaTwbKVYUA5ku/fF+cCRIT67hQTJyyPNYIAxjo2Bg5lNxTqSEnz7QOLsotF+1rSkB/
 P+4kZoYsEI/gueNP12r7598e7ghJObtzQKBMoW9WZQeIvg6yBDS7g+qYTD/gaBFfv0vs=;
Received: from mail.great-harvest.com.hk ([202.82.82.2]
 helo=GHMG01.great-harvest.local)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1r5EKp-00BUiW-J2 for v9fs-developer@lists.sourceforge.net;
 Tue, 21 Nov 2023 00:09:49 +0000
X-AuditID: c0a80a26-927612400000462b-ae-655bf2361b4e
Received: from [45.154.98.249] (Unknown_Domain [45.154.98.249])
 (using TLS with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 by GHMG01.great-harvest.local (Symantec Messaging Gateway) with SMTP id
 B4.C5.17963.632FB556; Tue, 21 Nov 2023 07:56:38 +0800 (HKT)
Message-ID: <B4.C5.17963.632FB556@GHMG01.great-harvest.local>
MIME-Version: 1.0
Content-Description: Mail message body
To: v9fs-developer@lists.sourceforge.net
From: "Ramadan Ahmad" <Ahmadramcfacffa@pobox.com>
Date: Tue, 21 Nov 2023 00:56:37 +0100
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrDJMWRmVeSWpSXmKPExsWiOyvpp67Zp+hUg30blC0+/l3F5sDosXvB
 Z6YAxigum5TUnMyy1CJ9uwSujImvDzAWnGauaP33namB8SdTFyMnh4SAicSWf5NZuhi5OIQE
 VjFJXD/RzwaSYBbQk7gxdQqYzStgKzHh2Cx2CFtQ4uTMJywQNdoSyxa+Zu5i5ACy1SS+dpWA
 hIUFDCWeHrnKCGKLCGhIPFy8CcxmA4of2z8PbCSLgKpE057rYDcICahLnJ96hWkCI88sJJtn
 Idk2C8m2WQjbFjCyrGKUcvfwdTcw1EsvSk0s0c1ILCpLLS7Ry8lPTszZxAgMoAMruNR2MH6c
 9FHvECMTB+MhRgkOZiUR3m9CEalCvCmJlVWpRfnxRaU5qcWHGKU5WJTEeQMCpOKFBNITS1Kz
 U1MLUotgskwcnFINTNE18lOsVs6euP++ylvpDU8L2Au/Zm2InbpYvf7+T2PJTp8za7U73/jd
 7BL4UiN7Sq/TwbLlutKCGK5Htf67v26sLxB6OT11tm1D2t3IyAgNzpraX8GWc8y+G3DuO7H/
 z7+UddNun96qde7xjqVfM3S8L3DtSpsaW9K3036FRmN6UcB3N7UK7wfN+Y4Tq3IlIsL7WsSD
 //NvOa35ibHxyuPAnc4tn6/UuWv7PhQ5u2hzXs185/VfLZikpr1d+Js1etMdznW58yQtpOxU
 D6vIlMyfOLn61DvFXWuCVtqnTPSqE3MwM3T9Ihf4iqmtc8GkVQyejP3c1aY3dl59s/F55dNP
 D9YoRhycfYShyHhGoRJLcUaioRZzUXEiAF4K3naPAgAA
X-Spam-Score: 4.8 (++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Attn: v9fs-developer@lists.sourceforge.net Date: 21-11-2023
 Subject: Investment Expression of Interest (IEOI) Dear Sir,
 Having been referred
 to your investment by my team, we would be honored to review your available
 investment projects for onward referral to my principal investors who can
 allocate capital for the fina [...] 
 Content analysis details:   (4.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
 [202.82.82.2 listed in dnsbl-1.uceprotect.net]
 1.7 DEAR_SOMETHING         BODY: Contains 'Dear (something)'
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 0.0 T_SPF_HELO_TEMPERROR   SPF: test of HELO record failed (temperror)
 0.4 RCVD_IN_MSPIKE_L4      RBL: Bad reputation (-4)
 [202.82.82.2 listed in bl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 1.0 RCVD_IN_MSPIKE_BL      Mailspike blocklisted
 0.0 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
X-Headers-End: 1r5EKp-00BUiW-J2
Subject: [V9fs-developer] Investment Expression of Interest (IEOI)
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
Reply-To: finance@almnadrinvestment.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Attn: v9fs-developer@lists.sourceforge.net
Date: 21-11-2023
Subject: Investment Expression of Interest (IEOI)

Dear Sir,

Having been referred to your investment by my team, we would be honored to review your available investment projects for onward referral to my principal investors who can allocate capital for the financing of it.

kindly advise at your convenience

Best Regards,
Ramadan Ahmad CFA
Chartered Finance Investment Analyst


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
