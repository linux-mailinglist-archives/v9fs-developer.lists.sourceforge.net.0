Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EEF082B45B
	for <lists+v9fs-developer@lfdr.de>; Thu, 11 Jan 2024 18:54:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1rNzFr-0007ah-Fs;
	Thu, 11 Jan 2024 17:54:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <datta.sydlerremedies@gmail.com>) id 1rNzFq-0007aZ-7x
 for v9fs-developer@lists.sourceforge.net;
 Thu, 11 Jan 2024 17:54:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1m2H7Bc0+95Aqthu2ExEQOl7eLnVjQj16NJHNJnsTKo=; b=kU0PqWcRVLp8pCYWADKFYQ1UJn
 2dCjT7RjLQx4nwbhOhnaSJhHfeDA9KX5zXBmyjhvoW/iBa/rGYuffQW8KLAGwowG9XSrRr4bQr/58
 RtF1XbQCccC+b1NSckksSgKPRVBLcco6Dho2nWlHpi9YYFANgQDLg6YveDSdqVD31VN0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=1m2H7Bc0+95Aqthu2ExEQOl7eLnVjQj16NJHNJnsTKo=; b=b
 M2mtNFwwonRPkG5X2519HMHfVZzed/wfPA38QMy3KrLmVT7oQdBgcimSPO0/4+2xhkh6i0sxMZFuP
 I9Cc++IPSu0tRY+lW9RoGWuw0MBwCvOCWjMLYaoSpanF1JST9Nu5TidBG1wTVqvSKFKLELQT0hN3L
 JcD0+GoDOE2bewFs=;
Received: from [103.198.26.227] (helo=22012.novalocal)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1rNzFl-0007xT-GO for v9fs-developer@lists.sourceforge.net;
 Thu, 11 Jan 2024 17:54:10 +0000
Received: from gmail.com (localhost [IPv6:::1])
 by 22012.novalocal (Postfix) with ESMTP id 42F1983513
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 12 Jan 2024 01:17:12 +0800 (+08)
From: Amir Aziz <datta.sydlerremedies@gmail.com>
To: v9fs-developer@lists.sourceforge.net
Date: 11 Jan 2024 09:17:10 -0800
Message-ID: <20240111091710.66DBC1E40AE7CF4D@gmail.com>
MIME-Version: 1.0
X-Spam-Score: 7.9 (+++++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Greetings,
 We are a consultancy firm situated in Bahrain currently
 looking to finance new or existing projects in any industry. Currently we
 are sourcing for opportunities for our review and consideration and would
 be delighted to discuss further. 
 Content analysis details:   (7.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
 headers
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [datta.sydlerremedies[at]gmail.com]
 2.0 PYZOR_CHECK            Listed in Pyzor
 (https://pyzor.readthedocs.io/en/latest/)
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 1.5 FSL_BULK_SIG           Bulk signature with no Unsubscribe
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
 0.0 SPOOFED_FREEMAIL_NO_RDNS From SPOOFED_FREEMAIL and no rDNS
 1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing
 list
X-Headers-End: 1rNzFl-0007xT-GO
Subject: Re: [V9fs-developer] We Can Finance Your Projects
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
Reply-To: amiraziz@wealthconsultantmanager.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Greetings,

We are a consultancy firm situated in Bahrain currently looking
to finance new or existing projects in any industry.

Currently we are sourcing for opportunities for our review and
consideration and would be delighted to discuss further.

Please feel free to contact us if you wish to proceed via our
email : amiraziz@wealthconsultantmanager.com

Regards,
Amir Aziz

N:B We will never charge or ask for any upfront fees of any sort.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
