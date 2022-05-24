Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 99AF75326D1
	for <lists+v9fs-developer@lfdr.de>; Tue, 24 May 2022 11:51:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ntRCS-0008Sc-Ld; Tue, 24 May 2022 09:51:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <xiubli@redhat.com>) id 1ntRCF-0008SL-Gc
 for v9fs-developer@lists.sourceforge.net; Tue, 24 May 2022 09:51:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HROxCg3THyAWJg+stBN26H1YCc49DJ6h7IjqQesEu3w=; b=PHu1T5vp8ENdHWVvbycfjm8eKs
 tY4XaK0AsvOBOnEPu3B0yLMA/CDORtcrcbqgdvj6Vh8DhJX7japgnv5+1ikMIlCQ28eBJJi3CKRMI
 0j14j6IDMVOwzRfd9qr9HzQgB8myx07U9DzataDPBVYTNvEpyLyUFldnrloZEhBCsMFk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HROxCg3THyAWJg+stBN26H1YCc49DJ6h7IjqQesEu3w=; b=QfKkLMhR0eBHjhpHRjYv75Pwxr
 tq/GsyrJPjug+AYHr3ka2NMGfmh/QFIBHOnnh70ViCqr4YngrCoygBhhiF9ASt1b7Tl6g9qxlby5s
 8kBbeGzrX8Yqnz7ZyEhPxD8PnXOuDOZ7LwGU++rFJA01MsnKjXHK2i2r8jnLtb+KLpHQ=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1ntRC7-0006yS-7e
 for v9fs-developer@lists.sourceforge.net; Tue, 24 May 2022 09:51:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1653385867;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=HROxCg3THyAWJg+stBN26H1YCc49DJ6h7IjqQesEu3w=;
 b=d5S1PqZE2PsAmxmE+QKoUpaO3U1yDdyBdtEvrsr66oLzUM7lWvOBMexNAh0nDiI3VjoD46
 m/Jdrsopj2TG9QI2rqSqJI/npv0GR1mWe7OvKgKQ7LY0RZ3SvpCGPp38KG9PSP9E7qDXuW
 t2FMnKX1TbgpkpQcyxa7Yt2ZwXWUl68=
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com
 [209.85.210.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-483-BsxWwbpFP6aXH7yxDZEJyg-1; Tue, 24 May 2022 05:51:06 -0400
X-MC-Unique: BsxWwbpFP6aXH7yxDZEJyg-1
Received: by mail-pf1-f197.google.com with SMTP id
 c23-20020a62e817000000b005184501a73aso5419294pfi.4
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 24 May 2022 02:51:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=HROxCg3THyAWJg+stBN26H1YCc49DJ6h7IjqQesEu3w=;
 b=GxwYsOS8D1IwK3sbk7iS46dWGk50FgkuV/ZgXuQL9VlNaUUHrcNqx1QzNhU/nx9GYP
 yOMgunR5BBtwn37Zgp+eL9oR+pRE36hrwDNRcAnR5YmlCzcsxIUCtFDV3cDhK60IdFiM
 R+T61AZ5RVpgq7ECugJMjlgVzwstfiyLA1dlo5BR4g+OwKenWOhT1O3XT7iw9CDz5wrF
 75TGz4tmeVpPFNYk4Cd+xLxDlwjwvrRlFoGkhcGwz7UIOUsrY9ba5Y++1G96hj3Azvnr
 lUPG4Jj6xJqK1HScVRv2xdRfkuyfy4Mf2reowYe4zJNii1m3E5dlDbvUQ+G3wIU6WMtc
 esig==
X-Gm-Message-State: AOAM533o/xFLBMfqXrfgFGZirNdO/S3sH9EVdBxFJNXBQTBgw7X72Qw9
 Xa7UnRyIK3B1bHLoZEpuo4H+sN/V5qHpQm6pJ6wNa/oivAoKjU9MYcfi2AabR2n0c8pS3qFlAUP
 5XwS7D513RHDZ7T4tKzGSy3+OY8X7PIb55dk=
X-Received: by 2002:a17:90a:c682:b0:1df:c4a8:5db6 with SMTP id
 n2-20020a17090ac68200b001dfc4a85db6mr3684394pjt.43.1653385865313; 
 Tue, 24 May 2022 02:51:05 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxdBOH+gVDMrgyZ041wJ5jZ+2lLXtmmTzIxw/fZE8mPGpSF9hC5I1Teh6Xt19AWnXqr7+s+0w==
X-Received: by 2002:a17:90a:c682:b0:1df:c4a8:5db6 with SMTP id
 n2-20020a17090ac68200b001dfc4a85db6mr3684372pjt.43.1653385865116; 
 Tue, 24 May 2022 02:51:05 -0700 (PDT)
Received: from [10.72.12.81] ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id
 z12-20020a17090a7b8c00b001df2f8f0a45sm1308834pjc.1.2022.05.24.02.50.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 24 May 2022 02:51:04 -0700 (PDT)
To: Jeff Layton <jlayton@kernel.org>, David Howells <dhowells@redhat.com>
References: <1b5daa4695b62795b617049e32c784052deabad4.camel@kernel.org>
 <165305805651.4094995.7763502506786714216.stgit@warthog.procyon.org.uk>
 <658391.1653302817@warthog.procyon.org.uk>
 <e4fcdf88a9b35a9f1ca6e75fdf75ad469f824380.camel@kernel.org>
From: Xiubo Li <xiubli@redhat.com>
Message-ID: <9945711f-c786-2300-9854-ee7734024a2c@redhat.com>
Date: Tue, 24 May 2022 17:50:54 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <e4fcdf88a9b35a9f1ca6e75fdf75ad469f824380.camel@kernel.org>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=xiubli@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -4.9 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 5/23/22 7:05 PM, Jeff Layton wrote: > On Mon, 2022-05-23
 at 11:46 +0100, David Howells wrote: >> Jeff Layton <jlayton@kernel.org>
 wrote: >> >>> Note that there are some conflicts between this patch [...] 
 Content analysis details:   (-4.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -3.3 NICE_REPLY_A           Looks like a legit reply (A)
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ntRC7-0006yS-7e
Subject: Re: [V9fs-developer] [PATCH v2] netfs: Fix gcc-12 warning by
 embedding vfs inode in netfs_i_context
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, linux-cifs@vger.kernel.org,
 William Kucharski <william.kucharski@oracle.com>, keescook@chromium.org,
 Jonathan Corbet <corbet@lwn.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 samba-technical@lists.samba.org,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Steve French <smfrench@gmail.com>, ceph-devel@vger.kernel.org,
 linux-hardening@vger.kernel.org, Marc Dionne <marc.dionne@auristor.com>,
 v9fs-developer@lists.sourceforge.net, Ilya Dryomov <idryomov@gmail.com>,
 linux-afs@lists.infradead.org, linux-fsdevel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


On 5/23/22 7:05 PM, Jeff Layton wrote:
> On Mon, 2022-05-23 at 11:46 +0100, David Howells wrote:
>> Jeff Layton <jlayton@kernel.org> wrote:
>>
>>> Note that there are some conflicts between this patch and some of the
>>> patches in the current ceph-client/testing branch. Depending on the
>>> order of merge, one or the other will need to be fixed.
>> Do you think it could be taken through the ceph tree?
>>
>> David
>>
> Since this touches a lot of non-ceph code, it may be best to just plan
> to merge it ASAP, and we'll just base our merge branch on top of it.
>
> Ilya/Xiubo, do you have an opinion here?
>   

Yeah, agree with Jeff.




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
