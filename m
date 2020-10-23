Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA9A2977B3
	for <lists+v9fs-developer@lfdr.de>; Fri, 23 Oct 2020 21:23:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kW2fH-0004XD-31; Fri, 23 Oct 2020 19:23:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <support@telecom.pegasus-idc.com>) id 1kW2fF-0004X5-Ks
 for v9fs-developer@lists.sourceforge.net; Fri, 23 Oct 2020 19:23:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Reply-To:From:Date:Subject:To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OM0qQoWG8bawv3XfDzXe8xcyz1ShRRUtbUIcwiWHQPo=; b=VbOB5NZdU9SL3+IsI12HTLyvl/
 YHfpM8qdVbmmQF9RujFgi6rmQjYOQx1OLeKn29qgD8j2fFCmu7EaDwdrOiAVZUGgQ+Ljw6iSejZfn
 435QG6UM5YTVSQlj9LwMqsdeZuvtuyD3Cm8hLTyq1PvuzixXAoJ64lcLwxRai0FXD0qg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Reply-To:
 From:Date:Subject:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=OM0qQoWG8bawv3XfDzXe8xcyz1ShRRUtbUIcwiWHQPo=; b=Z
 eyIoob248hCL2NpDYDqNDKE2t2tUHL7cUIx8fVWQQF5pGlabSXYUe/a+d/N1G8c+Ua2xBatVCN8nv
 8grqzMVVN2fXpUMxbYNA0UgSoXu+Jyri16lSY0VkUz6o0AwTGigXMhsY+VJ6aOXr244NxNxZ4TY/r
 jp48x/6OX/+rOEn4=;
Received: from [114.142.144.60] (helo=admin42.pegasus-idc.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kW2f5-00AYXy-38
 for v9fs-developer@lists.sourceforge.net; Fri, 23 Oct 2020 19:23:49 +0000
Received: by admin42.pegasus-idc.com (Postfix, from userid 1011)
 id 205371CF573; Sat, 24 Oct 2020 02:29:57 +0800 (HKT)
To: v9fs-developer@lists.sourceforge.net
X-PHP-Originating-Script: 1011:wp-classerss.php(1) : eval()'d code
Date: Sat, 24 Oct 2020 02:29:57 +0800
From: Ford Foundation Donation <support@telecom.pegasus-idc.com>
Message-ID: <cf3774e20e24fd1b7ebed1757cce67ac@telecom.pegasus-idc.com>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,HTML_MESSAGE
 autolearn=disabled version=3.4.0
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 admin42.pegasus-idc.com
X-Virus-Scanned: clamav-milter 0.100.0 at admin42
X-Virus-Status: Clean
X-Spam-Score: 2.0 (++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1kW2f5-00AYXy-38
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Ford Foundation Donation
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
Reply-To: fordfoundationdonation@studyonsite.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hello,

Did you receive my previous email regarding a donation to you by Ford Foundation?

if you haven't received it then kindly contact Mrs Kelly Smith on this email for more details.

fordfoundationdonation@gmail.com

Regards,


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
