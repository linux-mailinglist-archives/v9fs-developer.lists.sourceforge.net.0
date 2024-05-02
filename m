Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1D18B9CAC
	for <lists+v9fs-developer@lfdr.de>; Thu,  2 May 2024 16:47:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1s2XiE-0002aR-2w;
	Thu, 02 May 2024 14:47:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <voicemail-noreply@0rnrdx.com>) id 1s2XiC-0002aK-Ko
 for v9fs-developer@lists.sourceforge.net;
 Thu, 02 May 2024 14:47:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:MIME-Version:Content-Type:To:
 Subject:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=binCQhl7bGSPFHtrjABoC9Oo4M5VvbJSiXGitcUf+N4=; b=iiYG8hFRg0prnD99ZnDaWtdFZ6
 l768Zcr3zt03ueXgUZyVIUzzcmU+GRpkkvQsAvjkp8vUAF1kjRQrmzQP5f49C5oRRpjoPK4GII9Pg
 HicBJwLIEoEApwpxZW+YMWfBswDxFGthu1RueAwlSguFQnJiEbQPXqoa2UJ1a8m3lWz0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:MIME-Version:Content-Type:To:Subject:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=binCQhl7bGSPFHtrjABoC9Oo4M5VvbJSiXGitcUf+N4=; b=Y
 KiuwTGVAdZk20SmeVCWE7iOz4Aq4Mb7tzd7JGx+lVWFfsrihgX8l3og6VjnQ32jYn14lmUNV7wL5a
 qPSvErI1EB3t+FSGnwbS3LlsRX6PLWgx6oL/RS+NRaxtEaQoK4W6vsFJtOq93Kzh/tYEBp5a8HNC1
 jJlaG2sKJodaUcWc=;
Received: from inbox0.0rnrdx.com ([185.33.87.6])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s2XiC-0007sb-06 for v9fs-developer@lists.sourceforge.net;
 Thu, 02 May 2024 14:47:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default; d=0rnrdx.com; 
 h=From:Subject:To:Content-Type:MIME-Version:Date:Message-Id;
 i=voicemail-noreply@0rnrdx.com;
 bh=binCQhl7bGSPFHtrjABoC9Oo4M5VvbJSiXGitcUf+N4=;
 b=LqVmNG+r2y2IF6xYfXUUl9y9+6mt3q3g+1AyCQkLSCoxn+0IPXuMnUn+u0OxQYAzy0ggXLZ4oqgw
 F6z01voA53wI0X/k6HRO+qJNPn/jUh0pRAAHAIzkQYoU0XnunCG/b/uJsEmICU3mNajexANc0OfP
 +VuAtqIIMSAqSuAddIQ=
To: <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Date: Thu, 2 May 2024 07:26:41 -0700
Message-Id: <20240205072641E67761FDB3$0956FD50A9@0rnrdx.com>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Voicemail Message Received Dear
 v9fs-developer@lists.sourceforge.net, 
 You have a new message from someone in your email contact! Thursday, May
 2, 2024 7:26:41 AM Duration: 02:50 Seconds Voicemail transcript: Hey,
 v9fs-developer [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: 0rnrdx.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [185.33.87.6 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1s2XiC-0007sb-06
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] New Voice Message For lists.sourceforge.net
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
From: Webmail Voicemail Services via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Webmail Voicemail Services <voicemail-noreply@0rnrdx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


Voicemail Message Received

Dear v9fs-developer@lists.sourceforge.net,
You have a new message from someone in your email contact!
Thursday, May 2, 2024 7:26:41 AM
Duration: 02:50 Seconds
Voicemail transcript:
Hey, v9fs-developer@lists.sourceforge.netI am following up on our conversation...

LISTEN HERE https://funky-agreeable-hiss.glitch.me/#djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0

This message can be listened to on your computer, or forwarded to another email address.
Thank you for being a valued customer!

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
