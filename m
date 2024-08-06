Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 497DE9497ED
	for <lists+v9fs-developer@lfdr.de>; Tue,  6 Aug 2024 21:02:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1sbPS1-0002ya-6l;
	Tue, 06 Aug 2024 19:02:29 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mailer-daemon@host2.i4dots.com>) id 1sbPRz-0002yR-8h
 for v9fs-developer@lists.sourceforge.net;
 Tue, 06 Aug 2024 19:02:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Oo/j6D+VX4fhN4zy/CK0F0SWl/mGp7XHPkYSu8MrU3Q=; b=NgWL+ZceBklMxSu4mlMTupe9oJ
 ksxSYn9zNIyAmzWmXe/Fve/e09K8JCqb2gfc4dT9Z5XitCvPU4iAZ0uClomAoQXsIXuPzqLXQ/N1Q
 Vaj4FKXmSQ4rxlUnAs5uDNYdZrwru+RwWalJa3vBzq95widgfATWN/dIcanmK1XTddDc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Oo/j6D+VX4fhN4zy/CK0F0SWl/mGp7XHPkYSu8MrU3Q=; b=K
 OKDx1rvbs7zdoB/XXUTqKrJ9W6FY4Ev7p/f07w7Y1ZtUF3sFzfaOvpy2VYbxniaVJ5M3e2qg+e0f8
 a3cEoLcJmQ1d9i0uPNXiIkcRiRsrdKyW5wiB0gM+V87iDhFdPqRYqMamVIAoUuSzZ2KnG0MDtrTVX
 9Ou7OnPKF6LDAjRU=;
Received: from [154.216.20.57] (helo=host2.i4dots.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1sbPRy-0006H0-7n for v9fs-developer@lists.sourceforge.net;
 Tue, 06 Aug 2024 19:02:27 +0000
From: Mail Delivery System <mailer-daemon@host2.i4dots.com>
To: v9fs-developer@lists.sourceforge.net
Date: 6 Aug 2024 12:02:15 -0700
Message-ID: <20240806120215.BDC2CCA7D4A6E205@host2.i4dots.com>
MIME-Version: 1.0
X-Spam-Score: 5.2 (+++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Dear,
 v9fs-developer Message from v9fs-developer@lists.sourceforge.net
 server Messages Delivery Failure The delivery of messages was stopped by
 the lists.sourceforge.net Mail-Server. You have 3 pending messages that could
 not be sent as of 8/6/2024 12:02:15 p.m. 
 Content analysis details:   (5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ipfs.io]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [154.216.20.57 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [154.216.20.57 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 MIME_HTML_MOSTLY       BODY: Multipart message mostly text/html MIME
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.7 MPART_ALT_DIFF         BODY: HTML and text parts are different
 0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
 Colors in HTML 5.0 RCVD_IN_MSPIKE_BL      Mailspike blocklisted
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
 0.0 RCVD_IN_MSPIKE_ZBI     No description available.
 3.1 URI_PHISH              Phishing using web form
X-Headers-End: 1sbPRy-0006H0-7n
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Undeliverable: Outgoing mail failed
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

Dear, v9fs-developer
_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
