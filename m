Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 463E413893E
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Jan 2020 02:31:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Content-Description:Message-ID:Date:To:
	MIME-Version:Sender:Cc:Content-ID:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=i+Iy2sFTn8M/xcSQMfYI5YK8fWXxsrs5KfQYyx3pw0o=; b=m2fXKrVvh520UPmzng1pBaIFBE
	8wS1kTtc19aM5n+NnGNUwXCg4M0itXPT5NZl5nky1HuI1Ycw8plRlwBV9HB4OYaaxAx9fC6NWNJp3
	HNQvCSwuBHS2rV4aqMwd0Dd8nIyKMVRKbbgipJE82UbNT2entyBaxzrDOXNXMgGJCJiM=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1iqoZl-0001gx-Co; Mon, 13 Jan 2020 01:31:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <noreply@wetransfer.com>) id 1iqoZj-0001go-Lj
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jan 2020 01:31:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:From:To:Subject:MIME-Version:
 Content-Type:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2Qm2XA8w4OH/a1U2KsTbKrZJU/s+cqhyakgRh6h49VU=; b=OsGqVFbzIxVnY55YFqfQ9iFu6D
 ORwFN/6PhJrqBXG/lXN3dM/sp8iS1D9a8/8KRNb3FQ9giOJ4pzi0aNqtJogUvz6c6ecvckr7UR+q7
 EgsNiOas2TncLDGDMRQK8kULJAqM879yGjv3eTPRcJrpXu9alvs9i5sRCDRkyYeq3hxo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:From:To:Subject:MIME-Version:Content-Type:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=2Qm2XA8w4OH/a1U2KsTbKrZJU/s+cqhyakgRh6h49VU=; b=G
 6r7GhV9gUx/Dj9xGsz+/zw19XHkC6fUHR/iemJp+GgjRDgzo1iwQMPS1UNuvh62DnTNbu3hPF0oZx
 hEhqC4upHWddJgTsF54OcJwuQohN7dHZLS140SOlyWhe7tqI5lgJuB9eh5t5Sk1Y81P7DsWhBpXq+
 yLneErQBKBt072Ic=;
Received: from slot0.medixalsurg.ml ([85.204.116.235])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iqoZi-002a4T-46
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jan 2020 01:31:27 +0000
MIME-Version: 1.0
To: v9fs-developer@lists.sourceforge.net
Date: Sun, 12 Jan 2020 16:55:21 -0800
Message-ID: <0.0.3.2F0.1D5C9AC4151406C.0@slot0.medixalsurg.ml>
X-Spam-Score: 5.5 (+++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [85.204.116.235 listed in zen.spamhaus.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.9 SPF_FAIL               SPF: sender does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.net/Why?s=mfrom;
 id=noreply%40wetransfer.com; ip=85.204.116.235;
 r=util-malware-1.v13.lw.sourceforge.com]
 1.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1iqoZi-002a4T-46
Content-Description: Mail message body
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] v9fs-developer@lists.sourceforge.net Your files
 were sent successfully
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
From: WeTransfer via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: WeTransfer <noreply@wetransfer.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

  
    
     
    

  
   

 
    
    
   
You have received a files via WeTransfer
  2 files, 20 MB in total. Will be deleted on 7th December, 2019
   
   Get your files
    

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
