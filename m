Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F56192C652
	for <lists+v9fs-developer@lfdr.de>; Wed, 10 Jul 2024 00:48:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1sRJdj-00086U-6C;
	Tue, 09 Jul 2024 22:48:50 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <smtp@quicklyemailsend77.com>) id 1sRJdh-00086N-J8
 for v9fs-developer@lists.sourceforge.net;
 Tue, 09 Jul 2024 22:48:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Message-ID:Subject:
 To:From:Reply-To:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=X6JXQCNaT7PSpJtPd4UhZlWNT+rEFtQZ1lBtZYjQdvY=; b=bwc/FunEtj73fkfVKX39RXyO7Y
 HTmhvuoWqNWGj9gSL/iL0E/ZqpHiSzPPgUwRpmlvqYvDPhkBGN1XOL86Ib80P/ZQXTJmhph22U8kE
 l8ZLUDmstNt3bZCRcnKtc1HJxzO0IspMunQKXmoX5ikHagYCz0AFHMZW7Mlwpq44s3ZM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Message-ID:Subject:To:From:Reply-To:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=X6JXQCNaT7PSpJtPd4UhZlWNT+rEFtQZ1lBtZYjQdvY=; b=e
 UMJazIJ+kDDgTwEK2G9lZ1ZpG2qBxwWqP/q90h8mNenm7ElajscYgjWfy4a04C5rkus1ViuK+RvFh
 VYAMWZuXJcokCwz+yrLMYE2ZM5XlAjj/5+8CKmx6Fmm0pM5S8EecWKzlNCfd+SsMWA+sFlBedRngu
 1jjYQqr3zTyRoUp4=;
Received: from quicklyemailsend77.com ([54.36.163.70])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sRJdg-0005Ra-Ae for v9fs-developer@lists.sourceforge.net;
 Tue, 09 Jul 2024 22:48:48 +0000
Received: from DESKTOP-IL35PKJ (unknown [197.210.71.78])
 by quicklyemailsend77.com (Postfix) with ESMTPSA id 2AF736514A
 for <v9fs-developer@lists.sourceforge.net>;
 Tue,  9 Jul 2024 22:48:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 quicklyemailsend77.com 2AF736514A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quicklyemailsend77.com; s=default; t=1720565320;
 bh=X6JXQCNaT7PSpJtPd4UhZlWNT+rEFtQZ1lBtZYjQdvY=;
 h=Reply-To:From:To:Subject:Date:From;
 b=NDUujigbdbyprXOuawFkfBcOqCGkP4OUvyLTV+CZ91FOGaV4bwvq99VksWRr9NcyR
 Xg77Od+DrDMr7ILEy40/QqIC1ZXRunNewThYOW+YHG2knJStjAuMSu6GF4yEwS8k0f
 MaR5uWItUjrEN2VAwIdMllmE6PtqqfOiCdR2pHXB8Gj5a50Q0aTo6qzl5RFbhLPxvQ
 6yLDIk6X0pJuSspRpkUCcnCk+gqIVz09hAoWhn0XoMwgjAdWg8RaOZFR48bf8fnCyw
 nf5SeDD12tHPoYs4TWE/tw1a+xK13NILavH2agXIzpVLpuIsBujKFLHRYfiZh7y9HY
 DfMiDNlHWNuuA==
To: "v9fs-developer" <v9fs-developer@lists.sourceforge.net> 
Message-ID: <aa7352effb603d42b0fa3a5c81efbf78@169.254.85.160>
Date: Tue, 09 Jul 2024 17:48:03 -0500
MIME-Version: 1.0
X-Priority: 3
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Greetings, My name is Mr. John Maney. I am an independent
 financial broker with instructions to seek a business partnership between
 my client/investor and a reliable businessman or company with the ca [...]
 Content analysis details:   (0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [54.36.163.70 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [54.36.163.70 listed in bl.score.senderscore.com]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: quicklyemailsend77.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [54.36.163.70 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [johnmaney1955[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 MIME_HTML_MOSTLY       BODY: Multipart message mostly text/html MIME
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.7 MPART_ALT_DIFF         BODY: HTML and text parts are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
 2.5 ADVANCE_FEE_3_NEW      Appears to be advance fee fraud (Nigerian 419)
X-Headers-End: 1sRJdg-0005Ra-Ae
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Seeking your permission
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
From: John  via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: johnmaney1955@gmail.com
Cc: John  <smtp@quicklyemailsend77.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
