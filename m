Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BC754D3F39
	for <lists+v9fs-developer@lfdr.de>; Thu, 10 Mar 2022 03:21:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nS8QO-0000n0-JY; Thu, 10 Mar 2022 02:21:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jefflexu@linux.alibaba.com>) id 1nS8QL-0000mu-Jq
 for v9fs-developer@lists.sourceforge.net; Thu, 10 Mar 2022 02:21:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=adZIRKIeUQC70rP6i8RINGH95H//gobpEVLKpxC7e2E=; b=T0w29esMQPz9Sore1GbKpjA1CM
 GcEK0SLTn4WOHrrwDmAApCQaQ26ESZgsgWIbTsjxDFs445zQbfp1nsGJWevZzs2NLs1cui9awquzS
 OboytWaC/N35Yy/1H3+UfXSEiF5gH/d2gxErOzcJf+wZa+aVfUk4claN+dgCMDzkRsNo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=adZIRKIeUQC70rP6i8RINGH95H//gobpEVLKpxC7e2E=; b=JgnaFfNu84PG6SK2G2HTSYMj2D
 I0xHnPQq2DlDmpLDJmc78lbE8IoRNNLywmzgN236PzeHRAlSl58Nzef4E2GDaaA+JG6JUI2W2ExzQ
 PpgNH2eLIbByQrZuWLPELGC9sV5hZYue330l/sP8JZrDrqap7TG/GZ59XLMpO7sBmY/k=;
Received: from out30-43.freemail.mail.aliyun.com ([115.124.30.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nS8QI-00AQYm-3C
 for v9fs-developer@lists.sourceforge.net; Thu, 10 Mar 2022 02:21:04 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R261e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04426; MF=jefflexu@linux.alibaba.com;
 NM=1; PH=DS; RN=16; SR=0; TI=SMTPD_---0V6m1KrN_1646876422; 
Received: from 30.225.24.63(mailfrom:jefflexu@linux.alibaba.com
 fp:SMTPD_---0V6m1KrN_1646876422) by smtp.aliyun-inc.com(127.0.0.1);
 Thu, 10 Mar 2022 09:40:23 +0800
Message-ID: <3e942459-bb15-6322-10ae-dbadb09dd72c@linux.alibaba.com>
Date: Thu, 10 Mar 2022 09:40:21 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.6.1
Content-Language: en-US
To: Jeff Layton <jlayton@kernel.org>, David Howells <dhowells@redhat.com>,
 linux-cachefs@redhat.com
References: <164678185692.1200972.597611902374126174.stgit@warthog.procyon.org.uk>
 <164678190346.1200972.7453733431978569479.stgit@warthog.procyon.org.uk>
 <9132b97b5e52fec9c2838b31739175619df3e752.camel@kernel.org>
From: JeffleXu <jefflexu@linux.alibaba.com>
In-Reply-To: <9132b97b5e52fec9c2838b31739175619df3e752.camel@kernel.org>
X-Spam-Score: -8.0 (--------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 3/9/22 11:26 PM, Jeff Layton wrote: > On Tue, 2022-03-08
 at 23:25 +0000,
 David Howells wrote: >> From: Jeffle Xu <jefflexu@linux.alibaba.com>
 >> >> Export fscache_end_operation() to avoid code dupl [...] 
 Content analysis details:   (-8.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.43 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [115.124.30.43 listed in wl.mailspike.net]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nS8QI-00AQYm-3C
Subject: Re: [V9fs-developer] [PATCH v2 01/19] fscache: export
 fscache_end_operation()
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org,
 linux-afs@lists.infradead.org, ceph-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>,
 Steve French <sfrench@samba.org>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Ilya Dryomov <idryomov@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 David Wysochanski <dwysocha@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net



On 3/9/22 11:26 PM, Jeff Layton wrote:
> On Tue, 2022-03-08 at 23:25 +0000, David Howells wrote:
>> From: Jeffle Xu <jefflexu@linux.alibaba.com>
>>
>> Export fscache_end_operation() to avoid code duplication.
>>
>> Besides, considering the paired fscache_begin_read_operation() is
>> already exported, it shall make sense to also export
>> fscache_end_operation().
>>
> 
> Not what I think of when you say "exporting" but the patch itself looks
> fine.
> 

Yes, maybe "fscache: make fscache_end_operation() generally available"
as David said shall be better...

-- 
Thanks,
Jeffle


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
