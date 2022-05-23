Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 362F7530718
	for <lists+v9fs-developer@lfdr.de>; Mon, 23 May 2022 03:22:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nswls-0002B5-Jo; Mon, 23 May 2022 01:22:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <xiubli@redhat.com>) id 1nswlX-0002Ac-1L
 for v9fs-developer@lists.sourceforge.net; Mon, 23 May 2022 01:21:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QeksuAmJWYaEi0TQFOkREQ3m4yGhTUgNwHT42YPdtQw=; b=WRIuhi0y3S1P15BuQfcssgIpJE
 wfZJPrWAAx4nj6BBR/0MBbr3mpukMYNgVUxADxOL37MlcVg2luBMI6PV/OUhfjSb0ayYq5AvkSy+A
 N+qTP9lNRRyeTH3ZAcs6ItFXV8fG9mO1gr6306KWuM6Hb3IEJo0ReYHjGj1Qk9opw0jo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QeksuAmJWYaEi0TQFOkREQ3m4yGhTUgNwHT42YPdtQw=; b=SC8ZSIKM7mZPwYcmB+P1d1d1+c
 izVxd2GjWvsB6pUaSTkDy/usCgAN8j4ZVIFMulzKSbQIdXgqX8eiiOnj5iU7ZZa/KhOsDVjqott5m
 qnAN2t/WxQSSBh7KHLL4RRzlKBu5pO8U8th+CxG9Gq4/VI99s5OZX+o6XswMIfjvM2ZQ=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nswlS-0008U5-9r
 for v9fs-developer@lists.sourceforge.net; Mon, 23 May 2022 01:21:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1653268896;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QeksuAmJWYaEi0TQFOkREQ3m4yGhTUgNwHT42YPdtQw=;
 b=f7qoMEH1TD5cpHxKWwd/zWzhYss0pYdwmxMtwECxhw9zi468uzp9MNUCK7DelH9z12tYOf
 nZpVCSYAxgZb7to0pBOr/MUa60SXz/eEG1TAoL0e+qs/1XOHNQ3/aHXwbYggdKSLg+LESB
 b4CYRJJ1LGT83zA1quuei2v4pLlC6Aw=
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com
 [209.85.215.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-19-43fJ9ffzNhG5CpSv1tC_iw-1; Sun, 22 May 2022 21:21:34 -0400
X-MC-Unique: 43fJ9ffzNhG5CpSv1tC_iw-1
Received: by mail-pg1-f198.google.com with SMTP id
 e18-20020a656492000000b003fa4033f9a7so1063079pgv.17
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 22 May 2022 18:21:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=QeksuAmJWYaEi0TQFOkREQ3m4yGhTUgNwHT42YPdtQw=;
 b=TyQoeUROfiQfy20Q+Ve2rbe0D6EnqnNgC3D9ACpqstJXoP/KCULmVjnLHGJpOTzG7S
 tOQAmtVQYl+ZnRBAjUAjuljoCMS+KIXtPaSlmmGwwjzCpMcdoh0M/ZrZdc+153sctCdN
 2dl65+sSIoVJcQwnun7/W/Cwu9pw6R0Uz7lzRvq1eRZG7/FVFK4rm+QVuaBVzd/UI+aJ
 bR/flpAKN4bHz9MDBhoy/2EqF0iXRR2QQdez8VesPDkoKbISzZUynThNbwV0jGqssfMi
 ffWNj7XlO4WqIW+wXN22prioCM3osdP0SGN78oOKQmMoi7Trpt5mNbB1n9jOE2hrsClq
 Bbpg==
X-Gm-Message-State: AOAM533tqbYiRQM4OGNeXrzaJBzvbrPSnFfqVSyPy6EFU9xmGMEnUvuq
 LODH4opr1p42przaNib80HLrdGI4E7HJ4q1QstdUnjV/VgB5FCr8A7/wZ1f5J/QBNjCaCUrJYiI
 vlxrwVf/TLVO4uYVFIR2LFb5xRfdkL8rAM9k=
X-Received: by 2002:a17:90a:d903:b0:1df:a0da:20f0 with SMTP id
 c3-20020a17090ad90300b001dfa0da20f0mr23423499pjv.182.1653268892048; 
 Sun, 22 May 2022 18:21:32 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyNU9E4cxJdDWjM4BXDRtnTqV2SL+V24TO114v2WBtj4cxB6iy5/XCHNte78zG0bsganOQmLw==
X-Received: by 2002:a17:90a:d903:b0:1df:a0da:20f0 with SMTP id
 c3-20020a17090ad90300b001dfa0da20f0mr23423486pjv.182.1653268891813; 
 Sun, 22 May 2022 18:21:31 -0700 (PDT)
Received: from [10.72.12.81] ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id
 a15-20020a170902710f00b0015e8d4eb283sm3677403pll.205.2022.05.22.18.21.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 22 May 2022 18:21:31 -0700 (PDT)
To: Jeff Layton <jlayton@kernel.org>, David Howells <dhowells@redhat.com>
References: <165296980082.3595490.3561111064004493810.stgit@warthog.procyon.org.uk>
 <e5f6fee5518ce8e1b4fc5aa7038de1617a341c2f.camel@kernel.org>
From: Xiubo Li <xiubli@redhat.com>
Message-ID: <72a1cb54-4632-659d-e6ec-2d754ab2fc28@redhat.com>
Date: Mon, 23 May 2022 09:21:23 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <e5f6fee5518ce8e1b4fc5aa7038de1617a341c2f.camel@kernel.org>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=xiubli@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -2.7 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 5/19/22 11:36 PM, Jeff Layton wrote: > On Thu, 2022-05-19
 at 15:16 +0100, David Howells wrote: >> As the ->init() netfs op is now used
 to set up the netfslib I/O request >> rather than passing stuf [...] 
 Content analysis details:   (-2.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.2 NICE_REPLY_A           Looks like a legit reply (A)
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nswlS-0008U5-9r
Subject: Re: [V9fs-developer] [PATCH 1/2] netfs: ->cleanup() op is always
 given a rreq pointer now
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
Cc: David Wysochanski <dwysocha@redhat.com>, linux-cifs@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-afs@lists.infradead.org,
 Steve French <sfrench@samba.org>, linux-cachefs@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>, ceph-devel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


On 5/19/22 11:36 PM, Jeff Layton wrote:
> On Thu, 2022-05-19 at 15:16 +0100, David Howells wrote:
>> As the ->init() netfs op is now used to set up the netfslib I/O request
>> rather than passing stuff in, thereby allowing the netfslib functions to be
>> pointed at directly by the address_space_operations struct, we're always
>> going to be able to pass an I/O request pointer to the cleanup function.
>>
>> Therefore, change the ->cleanup() function to take a pointer to the I/O
>> request rather than taking a pointer to the network filesystem's
>> address_space and a piece of private data.
>>
>> Also, rename ->cleanup() to ->free_request() to match the ->init_request()
>> function.
>>
>> Signed-off-by: David Howells <dhowells@redhat.com>
>> cc: Jeff Layton <jlayton@kernel.org>
>> cc: Steve French <sfrench@samba.org>
>> cc: Dominique Martinet <asmadeus@codewreck.org>
>> cc: Jeff Layton <jlayton@redhat.com>
>> cc: David Wysochanski <dwysocha@redhat.com>
>> cc: Ilya Dryomov <idryomov@gmail.com>
>> cc: v9fs-developer@lists.sourceforge.net
>> cc: ceph-devel@vger.kernel.org
>> cc: linux-afs@lists.infradead.org
>> cc: linux-cifs@vger.kernel.org
>> cc: linux-cachefs@redhat.com
>> cc: linux-fsdevel@vger.kernel.org
>> ---
>>
>>   fs/9p/vfs_addr.c      |   11 +++++------
>>   fs/afs/file.c         |    6 +++---
>>   fs/ceph/addr.c        |    9 ++++-----
>>   fs/netfs/objects.c    |    8 +++++---
>>   include/linux/netfs.h |    4 +++-
>>   5 files changed, 20 insertions(+), 18 deletions(-)
>>
>> diff --git a/fs/9p/vfs_addr.c b/fs/9p/vfs_addr.c
>> index 501128188343..002c482794dc 100644
>> --- a/fs/9p/vfs_addr.c
>> +++ b/fs/9p/vfs_addr.c
>> @@ -66,13 +66,12 @@ static int v9fs_init_request(struct netfs_io_request *rreq, struct file *file)
>>   }
>>   
>>   /**
>> - * v9fs_req_cleanup - Cleanup request initialized by v9fs_init_request
>> - * @mapping: unused mapping of request to cleanup
>> - * @priv: private data to cleanup, a fid, guaranted non-null.
>> + * v9fs_free_request - Cleanup request initialized by v9fs_init_rreq
>> + * @rreq: The I/O request to clean up
>>    */
>> -static void v9fs_req_cleanup(struct address_space *mapping, void *priv)
>> +static void v9fs_free_request(struct netfs_io_request *rreq)
>>   {
>> -	struct p9_fid *fid = priv;
>> +	struct p9_fid *fid = rreq->netfs_priv;
>>   
>>   	p9_client_clunk(fid);
>>   }
>> @@ -94,9 +93,9 @@ static int v9fs_begin_cache_operation(struct netfs_io_request *rreq)
>>   
>>   const struct netfs_request_ops v9fs_req_ops = {
>>   	.init_request		= v9fs_init_request,
>> +	.free_request		= v9fs_free_request,
>>   	.begin_cache_operation	= v9fs_begin_cache_operation,
>>   	.issue_read		= v9fs_issue_read,
>> -	.cleanup		= v9fs_req_cleanup,
>>   };
>>   
>>   /**
>> diff --git a/fs/afs/file.c b/fs/afs/file.c
>> index 26292a110a8f..b9ca72fbbcf9 100644
>> --- a/fs/afs/file.c
>> +++ b/fs/afs/file.c
>> @@ -383,17 +383,17 @@ static int afs_check_write_begin(struct file *file, loff_t pos, unsigned len,
>>   	return test_bit(AFS_VNODE_DELETED, &vnode->flags) ? -ESTALE : 0;
>>   }
>>   
>> -static void afs_priv_cleanup(struct address_space *mapping, void *netfs_priv)
>> +static void afs_free_request(struct netfs_io_request *rreq)
>>   {
>> -	key_put(netfs_priv);
>> +	key_put(rreq->netfs_priv);
>>   }
>>   
>>   const struct netfs_request_ops afs_req_ops = {
>>   	.init_request		= afs_init_request,
>> +	.free_request		= afs_free_request,
>>   	.begin_cache_operation	= afs_begin_cache_operation,
>>   	.check_write_begin	= afs_check_write_begin,
>>   	.issue_read		= afs_issue_read,
>> -	.cleanup		= afs_priv_cleanup,
>>   };
>>   
>>   int afs_write_inode(struct inode *inode, struct writeback_control *wbc)
>> diff --git a/fs/ceph/addr.c b/fs/ceph/addr.c
>> index b6edcf89a429..ee8c1b099c4f 100644
>> --- a/fs/ceph/addr.c
>> +++ b/fs/ceph/addr.c
>> @@ -392,11 +392,10 @@ static int ceph_init_request(struct netfs_io_request *rreq, struct file *file)
>>   	return 0;
>>   }
>>   
>> -static void ceph_readahead_cleanup(struct address_space *mapping, void *priv)
>> +static void ceph_netfs_free_request(struct netfs_io_request *rreq)
>>   {
>> -	struct inode *inode = mapping->host;
>> -	struct ceph_inode_info *ci = ceph_inode(inode);
>> -	int got = (uintptr_t)priv;
>> +	struct ceph_inode_info *ci = ceph_inode(rreq->inode);
>> +	int got = (uintptr_t)rreq->netfs_priv;
>>   
>>   	if (got)
>>   		ceph_put_cap_refs(ci, got);
>> @@ -404,12 +403,12 @@ static void ceph_readahead_cleanup(struct address_space *mapping, void *priv)
>>   
>>   const struct netfs_request_ops ceph_netfs_ops = {
>>   	.init_request		= ceph_init_request,
>> +	.free_request		= ceph_netfs_free_request,
>>   	.begin_cache_operation	= ceph_begin_cache_operation,
>>   	.issue_read		= ceph_netfs_issue_read,
>>   	.expand_readahead	= ceph_netfs_expand_readahead,
>>   	.clamp_length		= ceph_netfs_clamp_length,
>>   	.check_write_begin	= ceph_netfs_check_write_begin,
>> -	.cleanup		= ceph_readahead_cleanup,
>>   };
>>   
>>   #ifdef CONFIG_CEPH_FSCACHE
>> diff --git a/fs/netfs/objects.c b/fs/netfs/objects.c
>> index e86107b30ba4..d6b8c0cbeb7c 100644
>> --- a/fs/netfs/objects.c
>> +++ b/fs/netfs/objects.c
>> @@ -75,10 +75,10 @@ static void netfs_free_request(struct work_struct *work)
>>   	struct netfs_io_request *rreq =
>>   		container_of(work, struct netfs_io_request, work);
>>   
>> -	netfs_clear_subrequests(rreq, false);
>> -	if (rreq->netfs_priv)
>> -		rreq->netfs_ops->cleanup(rreq->mapping, rreq->netfs_priv);
>>   	trace_netfs_rreq(rreq, netfs_rreq_trace_free);
>> +	netfs_clear_subrequests(rreq, false);
>> +	if (rreq->netfs_ops->free_request)
>> +		rreq->netfs_ops->free_request(rreq);
>>   	if (rreq->cache_resources.ops)
>>   		rreq->cache_resources.ops->end_operation(&rreq->cache_resources);
>>   	kfree(rreq);
>> @@ -140,6 +140,8 @@ static void netfs_free_subrequest(struct netfs_io_subrequest *subreq,
>>   	struct netfs_io_request *rreq = subreq->rreq;
>>   
>>   	trace_netfs_sreq(subreq, netfs_sreq_trace_free);
>> +	if (rreq->netfs_ops->free_subrequest)
>> +		rreq->netfs_ops->free_subrequest(subreq);
>>   	kfree(subreq);
>>   	netfs_stat_d(&netfs_n_rh_sreq);
>>   	netfs_put_request(rreq, was_async, netfs_rreq_trace_put_subreq);
>> diff --git a/include/linux/netfs.h b/include/linux/netfs.h
>> index c7bf1eaf51d5..1970c21b4f80 100644
>> --- a/include/linux/netfs.h
>> +++ b/include/linux/netfs.h
>> @@ -204,7 +204,10 @@ struct netfs_io_request {
>>    */
>>   struct netfs_request_ops {
>>   	int (*init_request)(struct netfs_io_request *rreq, struct file *file);
>> +	void (*free_request)(struct netfs_io_request *rreq);
>> +	void (*free_subrequest)(struct netfs_io_subrequest *rreq);
> Do we need free_subrequest? It looks like nothing defines it in this
> series.

If this is needed in future, or shall we do this in 
netfs_clear_subrequests() ?

-- Xiubo

>>   	int (*begin_cache_operation)(struct netfs_io_request *rreq);
>> +
>>   	void (*expand_readahead)(struct netfs_io_request *rreq);
>>   	bool (*clamp_length)(struct netfs_io_subrequest *subreq);
>>   	void (*issue_read)(struct netfs_io_subrequest *subreq);
>> @@ -212,7 +215,6 @@ struct netfs_request_ops {
>>   	int (*check_write_begin)(struct file *file, loff_t pos, unsigned len,
>>   				 struct folio *folio, void **_fsdata);
>>   	void (*done)(struct netfs_io_request *rreq);
>> -	void (*cleanup)(struct address_space *mapping, void *netfs_priv);
>>   };
>>   
>>   /*
>>
>>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
