Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B75288BCF
	for <lists+v9fs-developer@lfdr.de>; Fri,  9 Oct 2020 16:48:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kQth4-0002p4-Gh; Fri, 09 Oct 2020 14:48:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <josef@toxicpanda.com>) id 1kQth3-0002oo-R9
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Oct 2020 14:48:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CcKsaaPzQT2ESj6YOvwBkh06P5IZh1MGDwlgLgs4VHo=; b=T/x2pxTCv+mzKhoA5bMu0NXQ6B
 fHFQ7A+ad8pEdswDlNA4SfZWST6tLhI6t31jEmngH0d/4IJn3Dv1X6mMUsZRMoZLi6q8WAX7JBTuu
 GcAbIvHN0Rd2ubWo76k8t3j3cnKR8mL8cRC5K92XT4mWXPpCifRbPaN0OCor9Ummij8Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CcKsaaPzQT2ESj6YOvwBkh06P5IZh1MGDwlgLgs4VHo=; b=j9eqFtLpZ5T60nDkP9M2J+sihI
 gv5OlOKiktzTjU1HwOcDokNOJ6Y9+ZY5ouc1N5ksmchQbmax+2Wbf6YwRQ3Cq/cpWuR2n5uiObYFC
 imvVgiAV8gsF1Vs5SidW05DaJly6jlO5eAbC5q6/xxGFmn/7ACCNzpxCW52q9iKVYlOI=;
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kQtgw-004JSn-HP
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Oct 2020 14:48:25 +0000
Received: by mail-qk1-f194.google.com with SMTP id s4so10791515qkf.7
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 09 Oct 2020 07:48:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=toxicpanda-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=CcKsaaPzQT2ESj6YOvwBkh06P5IZh1MGDwlgLgs4VHo=;
 b=NlLNJz0gReMZ2olYoTwOI71Q3J7hZ4eCjDSLwfxrDsINskB/uRN0RJ63/6e4mp7rWK
 8HBBtYSi0tq6rQFBsNjlT8Imwpm8kDcN4jK2nSy7e062CLRT5RQCSFjHf1lN8ImYUGqc
 /vhv7tZjTIgwahWg6NDlOfjzYJ70RBtTYFaUtayjCmBbBlk6KxW8RzL4UWdAG77v2I9N
 A7UYx+wU+9EnXtsWlWiz3jQTPpdXvIdYWAVVCCCHPiVwb88OgPGRxAtC9APpf83BXrog
 jD06zR6/j/9ASrwFeC4hcqIdoEkQl6E5WRGzyO2rSgnCpr/6ATUZ0Ujgycjt3F5z1/Cd
 Sd+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=CcKsaaPzQT2ESj6YOvwBkh06P5IZh1MGDwlgLgs4VHo=;
 b=qupyrUZnFXstsG5XyGY+/5jV43lemXq5wYoPXhZSCnNXww0ltRrYVQvyxD64MnYPnU
 wCbbGWFaCbtnS70ZSVpCOIFT0gcAZ17AfYeh0NIiGg48z/Egtb8UzHcYhlIPuYC+Uxn/
 IuysdqYpqi8PhTRw65T3Yp6584fxDyR7RNa3buV8QSbyRK0b/O+9GUUafaDS8NfilRok
 yr/iYg1tXq8LezP01wGDzuU9EFhvijazYGYRcoINFosMOPZJwrRgH1YUI7AzcSCVYna5
 xPQtkB5XhUpejE75de/3K/dMJOOViEycWIIrX8Y2rxoanjA0n2MMmbJ0tnSKc5wzT0S5
 avMA==
X-Gm-Message-State: AOAM5311DnIKoV03alds/J8Ha7Wc0T0W6USxXhgIQqYHhp3mFIypUrcT
 DUCPYdybc24i2gjiBJj4Le/1P+onCarAUw==
X-Google-Smtp-Source: ABdhPJxkUTamFkDclFTulS7UVScV42JPT3TSQbrdjQZFe2ID/ahDqSFwMiv5AdzptTI3yxVlMZazyg==
X-Received: by 2002:ac8:5d04:: with SMTP id f4mr13754639qtx.290.1602253085840; 
 Fri, 09 Oct 2020 07:18:05 -0700 (PDT)
Received: from ?IPv6:2620:10d:c0a8:11e8::107d? ([2620:10d:c091:480::1:f1f8])
 by smtp.gmail.com with ESMTPSA id f3sm6216160qtp.57.2020.10.09.07.18.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 09 Oct 2020 07:18:03 -0700 (PDT)
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>,
 linux-fsdevel@vger.kernel.org
References: <20201004180428.14494-1-willy@infradead.org>
 <20201004180428.14494-6-willy@infradead.org>
From: Josef Bacik <josef@toxicpanda.com>
Message-ID: <b36885cc-0c4b-ee03-bcd3-56f94800d84e@toxicpanda.com>
Date: Fri, 9 Oct 2020 10:18:01 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201004180428.14494-6-willy@infradead.org>
Content-Language: en-US
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.222.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.194 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.2 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1kQtgw-004JSn-HP
Subject: Re: [V9fs-developer] [PATCH 5/7] btrfs: Promote to unsigned long
 long before shifting
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
Cc: lucho@ionkov.net, clm@fb.com, ericvh@gmail.com, linux-btrfs@vger.kernel.org,
 mark@fasheh.com, jlayton@kernel.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, joseph.qi@linux.alibaba.com, viro@zeniv.linux.org.uk,
 dsterba@suse.com, v9fs-developer@lists.sourceforge.net, idryomov@gmail.com,
 ceph-devel@vger.kernel.org, ocfs2-devel@oss.oracle.com, jlbec@evilplan.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 10/4/20 2:04 PM, Matthew Wilcox (Oracle) wrote:
> On 32-bit systems, this shift will overflow for files larger than 4GB.
> 
> Cc: stable@vger.kernel.org
> Fixes: df480633b891 ("btrfs: extent-tree: Switch to new delalloc space reserve and release")
> Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>

Reviewed-by: Josef Bacik <josef@toxicpanda.com>

Thanks,

Josef


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
