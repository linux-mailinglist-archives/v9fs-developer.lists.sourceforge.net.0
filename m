Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 240003F3031
	for <lists+v9fs-developer@lfdr.de>; Fri, 20 Aug 2021 17:52:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mH6ow-0000vH-UB; Fri, 20 Aug 2021 15:52:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <david@redhat.com>) id 1mH6ov-0000vA-IQ
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Aug 2021 15:52:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JlZGKQdLiYduLYkrU1ycwzHzZ/QPrtvBjhejt7xEWxE=; b=eSA2QqdLu9pYd2yxDCvW9tvwnr
 hIB3HMxBoxc+0mptIk66hPOSPyAc5vlyINxA840laB2ZWpDMt22S4H/7HNkaQPBoIQtCUXLqUGzxl
 2y8s+mDbgcFjq0ix2iW7tzDhuL1s5s0jk8SpQc7/H1wo3hEJbmMIe6U++nDCxTz631zM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JlZGKQdLiYduLYkrU1ycwzHzZ/QPrtvBjhejt7xEWxE=; b=EAnmBtpQoMNBFpxg1kSmNwcx7K
 e8+nOt0VY+oaFov6KRewbZ1WUXnKMUjpqqBUvH0TvYv4Ka9Qn9b5KcQievRoSfAUCczbXj6Ij0Po/
 jjRIkfQCf5TjMVtI1A9NA6TAjKK663iURnCTAYqTEiWMFlo47GZubuyRWmiHQ7hYxCkg=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mH6op-00CuKE-HH
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Aug 2021 15:52:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1629474745;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=JlZGKQdLiYduLYkrU1ycwzHzZ/QPrtvBjhejt7xEWxE=;
 b=f6w2pqh+i/ipjT0HvYCUSuPXJu6gOhZr7bMZVyaQRTya47PLRS6qsQoAk2H+fuSz3JpqNM
 MS0KQzgeAB0QWGR0FHVym/uwjVC+EzSWVr7qhimmUQbFRPXl7cI0LVl+jdC+RcvXKjntwj
 YDHFXl9KziFdhuvtWU/4R2cxeF3oG7w=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-341-Yc1pS1PhP2GHGW3mDb29Gw-1; Fri, 20 Aug 2021 11:52:22 -0400
X-MC-Unique: Yc1pS1PhP2GHGW3mDb29Gw-1
Received: by mail-wr1-f72.google.com with SMTP id
 x18-20020a5d49120000b0290154e9dcf3dbso2971997wrq.7
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 20 Aug 2021 08:52:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=JlZGKQdLiYduLYkrU1ycwzHzZ/QPrtvBjhejt7xEWxE=;
 b=LTliVr3sAY04s4eUiUFVBfbadUyQF19VEy6OKfaLjdxxwTFzZNw+Ccqq3ysuYZ6IEb
 ABctgVpJgIi0KR/I4jS7xI58vAaqD1foX+cIZZwaupDM1khDJEjuyVIlDS1z+dDtGATZ
 xtGSlCLgANAWIt2WPa4JoApE/JkW245cf21UhYGPd5GhEQMDdIGYHoI2fqDij22ETj3d
 s3ur/5EEpr0rQ59TZmgQ+Y5ZwGz5Zj74yKNuStR+MEqm9jZ8dwJmzgpubJ8iMl1G4BaN
 Gr79UjTadQ5n3rtNehJK6lg3LipyOE28/Fr4HLADMSocUHVZYKjyQ84UD/PUvRiAaBvg
 MzBw==
X-Gm-Message-State: AOAM533fiIDD+891Fk3ywcxMBkfb35o0qUa39ttondBWgLZ7I1WF9NdY
 9/hHlIPhCMOTOTrsQlQtxnskmUb0/MO/ck3rvZY38JxeCb7LqA86DJRk4EME02lPEXp2C84zg4j
 wOmcQzupDRw0kWDd49PZPkvo98NY1uZhl+PE=
X-Received: by 2002:a7b:c112:: with SMTP id w18mr4714033wmi.60.1629474741074; 
 Fri, 20 Aug 2021 08:52:21 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyaJBeCrGw4MnIfr+I5SADEkPPbDd6DJwmXEz/DXBgKbV1Dt/yBLdB7ItdMspgW4ZXDhi9QGA==
X-Received: by 2002:a7b:c112:: with SMTP id w18mr4714020wmi.60.1629474740919; 
 Fri, 20 Aug 2021 08:52:20 -0700 (PDT)
Received: from ?IPv6:2003:d8:2f0a:7f00:fad7:3bc9:69d:31f?
 (p200300d82f0a7f00fad73bc9069d031f.dip0.t-ipconnect.de.
 [2003:d8:2f0a:7f00:fad7:3bc9:69d:31f])
 by smtp.gmail.com with ESMTPSA id a18sm10107804wmg.43.2021.08.20.08.52.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 20 Aug 2021 08:52:20 -0700 (PDT)
To: Jeff Layton <jlayton@kernel.org>, torvalds@linux-foundation.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20210820135707.171001-1-jlayton@kernel.org>
 <20210820135707.171001-2-jlayton@kernel.org>
From: David Hildenbrand <david@redhat.com>
Organization: Red Hat
Message-ID: <0f4f3e65-1d2d-e512-2a6f-d7d63effc479@redhat.com>
Date: Fri, 20 Aug 2021 17:52:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210820135707.171001-2-jlayton@kernel.org>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=david@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -3.6 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 20.08.21 15:57,
 Jeff Layton wrote: > We've had CONFIG_MANDATORY_FILE_LOCKING
 since 2015 and a lot of distros > have disabled it. Warn the stragglers that
 still use "-o mand" that > we'll be droppin [...] 
 Content analysis details:   (-3.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [216.205.24.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mH6op-00CuKE-HH
Subject: Re: [V9fs-developer] [PATCH v2 1/2] fs: warn about impending
 deprecation of mandatory locks
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
Cc: bfields@fieldses.org, linux-nfs@vger.kernel.org, linux-doc@vger.kernel.org,
 stable@vger.kernel.org, willy@infradead.org, w@1wt.eu,
 cluster-devel@redhat.com, linux-mm@kvack.org, rostedt@goodmis.org,
 ebiederm@xmission.com, luto@kernel.org, v9fs-developer@lists.sourceforge.net,
 linux-afs@lists.infradead.org, ocfs2-devel@oss.oracle.com,
 viro@zeniv.linux.org.uk
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 20.08.21 15:57, Jeff Layton wrote:
> We've had CONFIG_MANDATORY_FILE_LOCKING since 2015 and a lot of distros
> have disabled it. Warn the stragglers that still use "-o mand" that
> we'll be dropping support for that mount option.
> 
> Cc: stable@vger.kernel.org
> Signed-off-by: Jeff Layton <jlayton@kernel.org>
> ---
>   fs/namespace.c | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 
> diff --git a/fs/namespace.c b/fs/namespace.c
> index ab4174a3c802..ffab0bb1e649 100644
> --- a/fs/namespace.c
> +++ b/fs/namespace.c
> @@ -1716,8 +1716,16 @@ static inline bool may_mount(void)
>   }
>   
>   #ifdef	CONFIG_MANDATORY_FILE_LOCKING
> +static bool warned_mand;
>   static inline bool may_mandlock(void)
>   {
> +	if (!warned_mand) {
> +		warned_mand = true;
> +		pr_warn("======================================================\n");
> +		pr_warn("WARNING: the mand mount option is being deprecated and\n");
> +		pr_warn("         will be removed in v5.15!\n");
> +		pr_warn("======================================================\n");
> +	}

Is there a reason not to use pr_warn_once() ?


-- 
Thanks,

David / dhildenb



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
