Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B5412FA36
	for <lists+v9fs-developer@lfdr.de>; Fri,  3 Jan 2020 17:22:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1inPiL-0004zd-0E; Fri, 03 Jan 2020 16:22:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <apache@579568-web1.augustineideas.com>)
 id 1inPiJ-0004zU-3g
 for v9fs-developer@lists.sourceforge.net; Fri, 03 Jan 2020 16:22:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Date:Message-Id:From:Subject:To:Sender:Reply-To:Cc:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=n5iq4+QcchLfcA4AYB+8M00fD5CnwADQwQJzn/hKRFY=; b=NsmKb1d3MLxzqhikzkwft/9Ids
 gIeq4TKo0FGqJktj+swoVcZjmAly70K5F9zUBpZ+sE8UUct5Jre2eBA4sxXvbHclPGMulpjn1eBih
 EknKFHRY6we3C87GIl2oto4Y7eIKBNCf/bq/VGa0ENGjMy6AhfILtXay0QizerGgRs4c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Date:Message-Id:From:Subject:To:Sender:Reply-To:Cc:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=n5iq4+QcchLfcA4AYB+8M00fD5CnwADQwQJzn/hKRFY=; b=Jai4h1qol9hyp2uL5UgRvG0p2z
 46HGcSL7gmb0UrRbWHydxUoXSFrlN2xpkatIN1ZFfXzggMZFZYW5qJO2r9W6yYDts7T0ztp6UW65r
 NqGywQbS17tYglWTirmROMUCPvewrWZl5LuFOe4Y/bbgq4e/vbFNKCRFVHe72OXJ8pHM=;
Received: from icardproduct.com ([67.192.8.88]
 helo=579568-web1.augustineideas.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1inPiB-008gAk-Ok
 for v9fs-developer@lists.sourceforge.net; Fri, 03 Jan 2020 16:22:14 +0000
Received: by 579568-web1.augustineideas.com (Postfix, from userid 48)
 id E4828441790; Fri,  3 Jan 2020 10:05:05 -0600 (CST)
To: v9fs-developer@lists.sourceforge.net
X-PHP-Originating-Script: 10045:process.php
From: noreply@bid2benefit.com
Message-Id: <20200103160505.E4828441790@579568-web1.augustineideas.com>
Date: Fri,  3 Jan 2020 10:05:05 -0600 (CST)
X-Spam-Score: 1.9 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.4 NO_DNS_FOR_FROM        DNS: Envelope sender has no MX or A DNS records
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: bid2benefit.com]
 0.3 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
 1.0 BODY_URI_ONLY Message body is only a URI in one line of text or for
 an image
X-Headers-End: 1inPiB-008gAk-Ok
Subject: [V9fs-developer] Thank you for contacting us
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Thank you for contacting us. Somebody will get back to you as soon as possible, usualy within 48 hours. If you have any more questions, please consult our website at www.bid2benefit.com


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
