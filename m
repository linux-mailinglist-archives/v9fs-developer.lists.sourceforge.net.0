Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 35B4B64F861
	for <lists+v9fs-developer@lfdr.de>; Sat, 17 Dec 2022 10:08:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p6TBL-0003Kr-AB;
	Sat, 17 Dec 2022 09:08:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <Support-Netflix.de@de.ipshu.de>) id 1p6TBB-0003KY-Vw
 for v9fs-developer@lists.sourceforge.net;
 Sat, 17 Dec 2022 09:08:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:From:Date:Subject:To:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H9aF9sLKG3tfUFkGEAe8JVHeZe3sJIiohMILXx59ghQ=; b=dnZf2orOIgbOUL8ykCmpvW1DLa
 tLHzCJtCVflz8fpsZFlu4FE8e3QnfiDq+g6BDKw1F317AmIVU9D0dZRHj1Xkz2CzYx6c8TDITRft5
 Dss5bsSbSBovXeCGgGk6SZ9Cdk/5WcThTdWWy3a4Cev/TneCIjTeSI1L7WvxJ1jgiGOo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:From:Date:
 Subject:To:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=H9aF9sLKG3tfUFkGEAe8JVHeZe3sJIiohMILXx59ghQ=; b=b
 noM/xG0E+ZTiQsRFfPosxacZZeYKrrpFmxTOLsK6x1ctZya4Z4Uc/CcL8MiQLa0rkNiVpVKMXIzla
 qT9FWNV/xhMSUS6d4/LxirxoaJHYoMFG1hCmNSrF3tL66z9C4hqGsLEpJ72DN/uOH8UbH7XMRbRaO
 phm1kRaOFNK+7z5Q=;
Received: from [182.18.176.252] (helo=host.zekisolutions.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p6TB9-002MRZ-FM for v9fs-developer@lists.sourceforge.net;
 Sat, 17 Dec 2022 09:08:25 +0000
Received: from dsblocks by host.zekisolutions.com with local (Exim 4.95)
 (envelope-from <Support-Netflix.de@de.ipshu.de>) id 1p6R3o-000AgY-DZ
 for v9fs-developer@lists.sourceforge.net;
 Sat, 17 Dec 2022 12:22:40 +0530
To: v9fs-developer@lists.sourceforge.net
X-PHP-Script: www.3dsblocks.com/wp-content/9P7tiqGfhvd.php for 196.75.205.8
X-PHP-Originating-Script: 1016:9P7tiqGfhvd.php
Date: Sat, 17 Dec 2022 06:52:40 +0000
From: NETFLIX <Support-Netflix.de@de.ipshu.de>
Message-ID: <7d54d267f8abb4c6524b41ff09111178@www.3dsblocks.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - host.zekisolutions.com
X-AntiAbuse: Original Domain - lists.sourceforge.net
X-AntiAbuse: Originator/Caller UID/GID - [1016 989] / [47 12]
X-AntiAbuse: Sender Address Domain - de.ipshu.de
X-Get-Message-Sender-Via: host.zekisolutions.com: authenticated_id:
 dsblocks/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: host.zekisolutions.com: dsblocks
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Spam-Score: 6.5 (++++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  NETFLIX Dear customer ,. We recently failed to verify your
 payment information. We therefore need to ask you to complete verification
 of your billing and payment details. 
 Content analysis details:   (6.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 NO_DNS_FOR_FROM        DNS: Envelope sender has no MX or A DNS records
 0.0 T_PDS_OTHER_BAD_TLD    Untrustworthy TLDs
 [URI: loteamentobuonavitaitu.fun] [(fun)]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.8 DKIM_ADSP_NXDOMAIN     No valid author signature and domain not in
 DNS
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
 identical to background
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [182.18.176.252 listed in wl.mailspike.net]
 0.0 URIBL_RED              Contains an URL listed in the URIBL redlist
 [URIs: loteamentobuonavitaitu.fun]
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
 1.0 URI_WP_DIRINDEX        URI for compromised WordPress site, possible
 malware 2.5 PHP_SCRIPT             Sent by PHP script
 0.6 NORDNS_LOW_CONTRAST    No rDNS + hidden text
X-Headers-End: 1p6TB9-002MRZ-FM
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Please update your payment method!
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




	



	
		
			
			NETFLIX

			
			Dear customer ,.

			We recently failed to verify your payment information.
			We therefore need to ask you to complete verification of your billing and payment details.

			
			Failure to complete the verification process will result in the suspension of your Netflix membership.

			Continue

			
			You will be able to restore your account once you have completed this step.
			
		
	


&nbsp;



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
