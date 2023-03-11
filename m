Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 382A96B5B76
	for <lists+v9fs-developer@lfdr.de>; Sat, 11 Mar 2023 13:08:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pay1c-0000LL-27;
	Sat, 11 Mar 2023 12:08:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ivan.orlov0322@gmail.com>) id 1pay1a-0000LE-II
 for v9fs-developer@lists.sourceforge.net;
 Sat, 11 Mar 2023 12:08:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=woZf4q42tHp49ueUObZVIIXGfTyB8+07d5DSIpk0Q8g=; b=NnVzUIoJ82wjOhwtpMgEF70qAF
 TsNk4cBZ4rFNlvHWbh/oJG+NQHkCl5m/Bc5eoSdb0P4T6Bceg4/JuTFVJdvIx0r63i0EQ9Ug7jbpB
 i2ycySO41QXD2/ly1gXAzV9ilVMlJI+v3f0x8eNQKbzGs33umu5/5LlrHmLhO/9oiS3A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=woZf4q42tHp49ueUObZVIIXGfTyB8+07d5DSIpk0Q8g=; b=WwWj2Z9Yf2cjEtoBDOSCFvwhoe
 IR5JKhC3TXIo4t07kn0/et4vos7hCem5ZQDHmCKwP7v+W0cJHJi+/qoL9nyhmeDDjSjEcNzoM5WF8
 p88ChhS9+hgr7TsZP97FEPhtSMYP3HfA6V24o/ZRFk7p6SA9cdP+9JVHLWaNpMu/oyOg=;
Received: from mail-ed1-f53.google.com ([209.85.208.53])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pay1a-00057H-6q for v9fs-developer@lists.sourceforge.net;
 Sat, 11 Mar 2023 12:08:35 +0000
Received: by mail-ed1-f53.google.com with SMTP id x3so30958629edb.10
 for <v9fs-developer@lists.sourceforge.net>;
 Sat, 11 Mar 2023 04:08:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1678536507;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=woZf4q42tHp49ueUObZVIIXGfTyB8+07d5DSIpk0Q8g=;
 b=WPYwAccQXHiJdDjnDz+rXTtABM29ygVJxLl8hQPRJFAKYpPQwHdAubyQaUwhhq3aVG
 B+JdRYGF7rL+wZ6WqZMHPh0rMZj/u9N5xj6RawCzqh8EtJ2W0FmFwKCzA9Pni0f5QHSd
 3zbn0F6SvxDYoYJy+PzY2M/YdtmUPrQghqX0osce62gXZoUGBoEuxc2FZieXxxiEnAfs
 DtKElA2SXd5WCLyFZ1YeA44sut+i0kMVLrciZRkzXHf9/+aGGgHl5Y3JIv8GQ6dfyeWr
 9D3aAYvwvnVtlYJA/HklLJLNQLNvPUFn64/RvAkXMtjRIlRse1SYMoe0qQUJK/sJN7ps
 1mmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678536507;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=woZf4q42tHp49ueUObZVIIXGfTyB8+07d5DSIpk0Q8g=;
 b=qhpP/AUcsCf/jLwO3lFg7p/5O5kKXvbkERb/5RU5clhlUkfN5AxD3+80cXOs7DD+ZR
 P72KTFzVEDLVCCg3Lvhd2gPQ6RFSiSm9rymIMIxdkC7e1lD0UyQWB/BJ0bOewTjFsQ62
 OcNMrxYF57JqVEAiVRf5HjTEItmXkfpGV1IdNpXhjGVO6sJ5emQStkv1FP/WeJs0gmnj
 Nj+ZdP3cqa0hQp0dNTFgHndg5MiWz/rAycmCipoSHKjrYRtwmb3E4GbrjKJvqPpS8RIJ
 NdX9tphNWuVoAIKZnBj0yImrHUeuhZHuSesOSUCYOYuuE+Q61K4GWtmtblJv+rYmOHwO
 Q1kQ==
X-Gm-Message-State: AO0yUKWX+37kTThk6ks1ERhDvdXhK5cOREwxT6QljDMWMsSDsHD+/yxO
 Qy8oW7i2sEadpHMWMQ+d2Gg=
X-Google-Smtp-Source: AK7set8cQ3IbVQPp5rW5j8R8T3zo8ov/GFyoNFWjqTDVvvEQiHzd/8Z7sjsG8mC30eypxr0i6sJvQA==
X-Received: by 2002:a17:906:1cd:b0:8ae:ea08:3842 with SMTP id
 13-20020a17090601cd00b008aeea083842mr5139696ejj.7.1678536506741; 
 Sat, 11 Mar 2023 04:08:26 -0800 (PST)
Received: from [192.168.10.15] ([37.252.81.68])
 by smtp.gmail.com with ESMTPSA id
 g9-20020a1709061e0900b008c607dd7cefsm1040131ejj.79.2023.03.11.04.08.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 11 Mar 2023 04:08:26 -0800 (PST)
Message-ID: <f23b861f-25ea-785d-83b3-f66d924d663f@gmail.com>
Date: Sat, 11 Mar 2023 16:08:24 +0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Christian Schoenebeck <linux_oss@crudebyte.com>, ericvh@gmail.com,
 lucho@ionkov.net, asmadeus@codewreck.org
References: <20230311063411.7884-1-ivan.orlov0322@gmail.com>
 <15987509.0H6QrEVh2d@silver>
From: Ivan Orlov <ivan.orlov0322@gmail.com>
In-Reply-To: <15987509.0H6QrEVh2d@silver>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 3/11/23 15:17, Christian Schoenebeck wrote: > I would have
 written it in different style: > > if (buffer_size) > retval = -ERANGE; >
 else if (attr_size > SSIZE_MAX) > retval = -EOVERFLOW; > else > [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ivan.orlov0322[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [ivan.orlov0322[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.53 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.53 listed in list.dnswl.org]
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1pay1a-00057H-6q
Subject: Re: [V9fs-developer] [PATCH v2] 9P FS: Fix wild-memory-access write
 in v9fs_get_acl
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
Cc: v9fs-developer@lists.sourceforge.net, himadrispandya@gmail.com,
 syzbot+cb1d16facb3cc90de5fb@syzkaller.appspotmail.com,
 linux-kernel@vger.kernel.org, skhan@linuxfoundation.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 3/11/23 15:17, Christian Schoenebeck wrote:
> I would have written it in different style:
> 
>      if (buffer_size)
>          retval = -ERANGE;
>      else if (attr_size > SSIZE_MAX)
>          retval = -EOVERFLOW;
>      else
>          retval = attr_size; /* request to get the attr_size */
> 
> But the behaviour change itself makes sense, so:
> 
> Reviewed-by: Christian Schoenebeck <linux_oss@crudebyte.com>
> 
>>   	} else {
>>   		iov_iter_truncate(&to, attr_size);
>>   		retval = p9_client_read(attr_fid, 0, &to, &err);
>>
> 
> 

You are right, the condition can be simplified, thank you! I will 
rewrite it, send as v3 and mention you in 'suggested-by'.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
