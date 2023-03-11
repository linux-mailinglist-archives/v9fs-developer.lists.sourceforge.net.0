Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A81B6B58DC
	for <lists+v9fs-developer@lfdr.de>; Sat, 11 Mar 2023 07:12:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pasSp-0002fj-QK;
	Sat, 11 Mar 2023 06:12:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ivan.orlov0322@gmail.com>) id 1pasSo-0002fc-5M
 for v9fs-developer@lists.sourceforge.net;
 Sat, 11 Mar 2023 06:12:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rVC8LiGnUfG6nH76f2ANmYFw3KtTCvNV7A7+6I82Gks=; b=Q0mBdXLqJ9HhD0wrsg1rX0T5q9
 R418JGIt7kuuZ0KZWktYMrYPLLgZAJgjIH0tbvm9jbokxTxPl8H1ke+NOpytuijeNa6M2cEIN3/F7
 gvxVAf/Ph6BszlYNR4g5GC3nfnOSTFE2tpPaznwzxs4Bu4bDZ5ZLwbYxaN20QMls3GNI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rVC8LiGnUfG6nH76f2ANmYFw3KtTCvNV7A7+6I82Gks=; b=Yz3tC4YyHaexUwL3AJ4V726ZMR
 s3XuRxA2iU0QwmCnpdpxTiDrjlI7RTc8vqYXHM3isj5a5IWV3DS66z2iGhFmmFB9+2zoHorywSy+G
 tG4O3Hukm+6boS7JidtJnBBiRyVPhUwTurtLnBvANLr7EVEogiEEDjQk4rYYwecjRpd4=;
Received: from mail-ed1-f45.google.com ([209.85.208.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pasSm-004QhX-MP for v9fs-developer@lists.sourceforge.net;
 Sat, 11 Mar 2023 06:12:18 +0000
Received: by mail-ed1-f45.google.com with SMTP id j11so29115687edq.4
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 10 Mar 2023 22:12:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1678515130;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=rVC8LiGnUfG6nH76f2ANmYFw3KtTCvNV7A7+6I82Gks=;
 b=Og7FiROuZ05YCLv2EfXCEia1iQhtPv/bti70tBPQ44KDDZoAs5Um29S+pPuhla/doW
 mo/LYVkXv2odN9UJ0Bn50cJX58XBcgRD+UZ9vIOV6Z8im7BhcJ27H+Ou1z4OL8qVbquy
 6DUvOSKNEb3cOZlEzdXmY431h0NQaFhNcnxoBZFjd6V51Sg0l0p+cANRuTf0ApWY7LkC
 kB760xeH2xFRuDNqKnYTL4+zmAfh+wCBnYsKtoxABXltDIuQiKAqHaDQZvckAOJFGVkz
 Nug6iXfwq04SADdIWcyA2ScaGoBvzdJkD9SLRL+9Uk3az+lZE4+LKyI/2MuNKpSgjZDZ
 nE+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678515130;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=rVC8LiGnUfG6nH76f2ANmYFw3KtTCvNV7A7+6I82Gks=;
 b=EjLNCXBjbe14hfLHaOdOuDRJMlIkoD+/xaTpK3SIdnNSUHNzGqo4IwbJQ9w9pfvbs3
 Ci/M5XbVzNTsIaGBRN38XePOZNJzhxS/IGMYF6XtwGzNiQ3w4XP3A0cCl8YxOmsLPSAM
 vrJEDLW3rXfH/SahVDphDSQi/YrFrim6uJC+xQZnBm8ufo6OHYOYJHvAt08BvgIonYiF
 aD+7hbsITcSlnAt5KQzF0dbx9X71AXI4h+NWx4Ko09lb4ycHKnARAwDjaKP+oKGGcfgb
 rqHmfJU/EVziD42Ka3gnzQZCC08uVBuhimMkVzw4EwJlQ05LHoHStgr34SzPxfpCmHsq
 UqrA==
X-Gm-Message-State: AO0yUKW+h4fCMSMMr/yXkKsH29aP6Rl1ui01J2QCur3J+2Wx7QqrdEdm
 oNCAKwpMDls3C3sbKJxXWhs=
X-Google-Smtp-Source: AK7set8K606JzvAv5mqcU/f2BrqbeSpWXF7RngXN9y8ZyHVKNxPGmXOrxixkhn/2bYUOn1H7UHRSSA==
X-Received: by 2002:a05:6402:1e8e:b0:4bc:3ff2:dbe7 with SMTP id
 f14-20020a0564021e8e00b004bc3ff2dbe7mr9501767edf.1.1678515129970; 
 Fri, 10 Mar 2023 22:12:09 -0800 (PST)
Received: from [192.168.10.15] ([37.252.81.68])
 by smtp.gmail.com with ESMTPSA id
 s7-20020a508d07000000b004af6c5f1805sm786410eds.52.2023.03.10.22.12.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 10 Mar 2023 22:12:09 -0800 (PST)
Message-ID: <bfd3eecf-4af2-184c-ff52-5509791fbf49@gmail.com>
Date: Sat, 11 Mar 2023 10:12:07 +0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Siddh Raman Pant <code@siddh.me>
References: <20230310202619.433269-1-ivan.orlov0322@gmail.com>
 <186cf19b619.4777c80c154603.5258165448157616593@siddh.me>
From: Ivan Orlov <ivan.orlov0322@gmail.com>
In-Reply-To: <186cf19b619.4777c80c154603.5258165448157616593@siddh.me>
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 3/11/23 09:16, Siddh Raman Pant wrote: > On Sat, 11 Mar
 2023 01:56:19 +0530, Ivan Orlov wrote: >> KASAN reported the following issue:
 >> [...] >> >> Calling '__v9fs_get_acl' method in 'v9fs_get_acl [...] 
 Content analysis details:   (-1.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [ivan.orlov0322[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ivan.orlov0322[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.45 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1pasSm-004QhX-MP
Subject: Re: [V9fs-developer] [PATCH] 9P FS: Fix wild-memory-access write in
 v9fs_get_acl
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
Cc: lucho <lucho@ionkov.net>, ericvh <ericvh@gmail.com>,
 linux_oss <linux_oss@crudebyte.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, syzbot+cb1d16facb3cc90de5fb
 <syzbot+cb1d16facb3cc90de5fb@syzkaller.appspotmail.com>,
 v9fs-developer <v9fs-developer@lists.sourceforge.net>,
 linux-kernel-mentees <linux-kernel-mentees@lists.linuxfoundation.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 3/11/23 09:16, Siddh Raman Pant wrote:
> On Sat, 11 Mar 2023 01:56:19 +0530, Ivan Orlov wrote:
>> KASAN reported the following issue:
>> [...]
>>
>> Calling '__v9fs_get_acl' method in 'v9fs_get_acl' creates the
>> following chain of function calls:
>>
>> __v9fs_get_acl
>>        v9fs_fid_get_acl
>>                v9fs_fid_xattr_get
>>                        p9_client_xattrwalk
>>
>> Function p9_client_xattrwalk accepts a pointer to u64-typed
>> variable attr_size and puts some u64 value into it. However,
>> after the executing the p9_client_xattrwalk, in some circumstances
>> we assign the value of u64-typed variable 'attr_size' to the
>> variable 'retval', which we will return. However, the type of
>> 'retval' is ssize_t, and if the value of attr_size is larger
>> than SSIZE_MAX, we will face the signed type overflow. If the
>> overflow occurs, the result of v9fs_fid_xattr_get may be
>> negative, but not classified as an error. When we try to allocate
>> an acl with 'broken' size we receive an error, but don't process
>> it. When we try to free this acl, we face the 'wild-memory-access'
>> error (because it wasn't allocated).
>>
>> This patch will modify the condition in the 'v9fs_fid_xattr_get'
>> function, so it will return an error if the 'attr_size' is larger
>> than SSIZE_MAX.
>>
>> Reported-by: syzbot+cb1d16facb3cc90de5fb@syzkaller.appspotmail.com
>> Link: https://syzkaller.appspot.com/bug?id=fbbef66d9e4d096242f3617de5d14d12705b4659
>> Signed-off-by: Ivan Orlov ivan.orlov0322@gmail.com>
> 
> You should also test with Syzkaller if it gave a reproducer.
> Check the following docs to know about it:
> https://github.com/google/syzkaller/blob/master/docs/syzbot.md#testing-patches
> 
>> ---
>>   fs/9p/xattr.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/fs/9p/xattr.c b/fs/9p/xattr.c
>> index 50f7f3f6b55e..d6f7450107a8 100644
>> --- a/fs/9p/xattr.c
>> +++ b/fs/9p/xattr.c
>> @@ -35,7 +35,7 @@ ssize_t v9fs_fid_xattr_get(struct p9_fid *fid, const char *name,
>>   		return retval;
>>   	}
>>   	if (attr_size > buffer_size) {
>> -		if (!buffer_size) /* request to get the attr_size */
>> +		if (!buffer_size && attr_size <= (u64) SSIZE_MAX) /* request to get the attr_size */
>>   			retval = attr_size;
>>   		else
>>   			retval = -ERANGE;
> 
> You should use EOVERFLOW for overflow error. Make a new conditional
> instead of using AND. Also, the explicit u64 cast for SSIZE_MAX can
> be dropped for better readability.
> 
> Thanks,
> Siddh
> 
>> -- 
>> 2.34.1
>>
>> _______________________________________________
>> Linux-kernel-mentees mailing list
>> Linux-kernel-mentees@lists.linuxfoundation.org
>> https://lists.linuxfoundation.org/mailman/listinfo/linux-kernel-mentees

Thank you for the review! I will modify the patch according to your 
comments, resend it as v2 version and test it via syzkaller.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
