Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB2F14AEAE
	for <lists+v9fs-developer@lfdr.de>; Tue, 28 Jan 2020 05:36:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Content-Description:Message-ID:Date:To:
	MIME-Version:Sender:Cc:Content-ID:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=i+Iy2sFTn8M/xcSQMfYI5YK8fWXxsrs5KfQYyx3pw0o=; b=BqslA3QCGe3RxiQ3yLLyceFexd
	yVmygB58uE91SjWHtfdGl5c4nxsclyMOdAz4dSVjSkx7zEHuV/TU6I+FaSTVBko57puxTn/57iWYx
	U/hrZaMsogjdl5VCaIBA01h70211WiKy/TF3nNfYzljoviUVK2YmTf/gGGqKmhxaJsxM=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1iwIbo-0006BZ-Ib; Tue, 28 Jan 2020 04:36:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <noreply@wetransfer.com>) id 1iwIbl-0006BD-KS
 for v9fs-developer@lists.sourceforge.net; Tue, 28 Jan 2020 04:36:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:From:To:Subject:MIME-Version:
 Content-Type:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2hISgEjLcxV0P+s9YlbMKbB/n/2A1qJARD9E+N+FNxk=; b=F7ntvh+0AL6HODpzP0HDJS5mCt
 9YJy1GTRitJyeumgZsGXNSwDlJd5D24A7Cjqvq3M5el4xfQpfI33m2ZtyYTH3BbscJosEsaMTR9+e
 tPwmbn+RuMPkHuUOkEz1X1AS70H6kiUWJUg65sZQdxEEFm/tZF8pv8drzc9DzoGulxl0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:From:To:Subject:MIME-Version:Content-Type:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=2hISgEjLcxV0P+s9YlbMKbB/n/2A1qJARD9E+N+FNxk=; b=h
 Mkc67AzUGKA7ITrIdBjrJOXvXBvgvv+EgbtBUR/qFbx0kcGTeNeDw/WE5tU2SbXo/3oI1Xq4FF7iU
 RmhxnFza3oopj17i95kSs2ASQ6SScnfnI78W/bR73QnJVxjwgFv2FNHeCiLK1R7TkFGjclg0NI4cy
 taOH4mT26QgoFlIo=;
Received: from [85.204.116.67] (helo=slot0.chemixalflazic.ml)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iwIbj-002i8X-OL
 for v9fs-developer@lists.sourceforge.net; Tue, 28 Jan 2020 04:36:13 +0000
MIME-Version: 1.0
To: v9fs-developer@lists.sourceforge.net
Date: Mon, 27 Jan 2020 20:36:04 -0800
Message-ID: <0.0.1.E5E.1D5D594A779A890.0@slot0.chemixalflazic.ml>
X-Spam-Score: 2.8 (++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: fueledbygumbo.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.9 SPF_FAIL               SPF: sender does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.net/Why?s=mfrom;
 id=noreply%40wetransfer.com; ip=85.204.116.67;
 r=util-malware-1.v13.lw.sourceforge.com]
 1.0 HTML_MESSAGE           BODY: HTML included in message
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iwIbj-002i8X-OL
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
