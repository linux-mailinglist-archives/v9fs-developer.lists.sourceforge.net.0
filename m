Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B787288BC7
	for <lists+v9fs-developer@lfdr.de>; Fri,  9 Oct 2020 16:46:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kQtfD-0003RD-4m; Fri, 09 Oct 2020 14:46:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <josef@toxicpanda.com>) id 1kQtf9-0003R3-53
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Oct 2020 14:46:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2Nsozhx6Vbc7+gevBK4suxhbi1tLEGMu37jB4LFRAPw=; b=braM2XVQYpfaKucq8Riw8h/Z9j
 Be+JnHnBi5JolPc7WY1UO9Gbo1kPO4nvV73rn0pOhGn+2OZMbL4DP6gzQsVHSdxqhA/LeCBiRjoK2
 jX5GtM+tR6q4ykBgcq27x8oO7q6tU9cttPWM0vdX9rYDvBE4hpkVQ9qHEneQPUIYfek0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2Nsozhx6Vbc7+gevBK4suxhbi1tLEGMu37jB4LFRAPw=; b=D8u5urPo4vn+5OfQAqxlo3UHfW
 HaJJyX5oP9GPDmjs9jLRhZcq9EWcFwxykLI78Hl/6kZbzCcfuvuw/Ii9qPfsLFn3HxXRYbdrpE7la
 NNy6C3IURR4687NZAqEI2a5DIZPhYKwv9a0wEZdKXVMW+FLTq7UAkPoCJeGeSHmaObSs=;
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kQtes-004JOg-E3
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Oct 2020 14:46:27 +0000
Received: by mail-qt1-f195.google.com with SMTP id m9so8063930qth.7
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 09 Oct 2020 07:46:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=toxicpanda-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=2Nsozhx6Vbc7+gevBK4suxhbi1tLEGMu37jB4LFRAPw=;
 b=hxFVkoe9fUSNiPI+uQ12JsKm6OjRLbKc/6lbFpVRDpIhsRf4KNWmimf4Uw4bwdRTz5
 uQebX3pJKZMtpcnAIYfdaL/HusqLmmVCjy1WhA7fNAyfon0iBRnmnTuq2eXAKWGAKu/g
 /vTH9xfC6VEOLORYAQpLlpSOhlk9U2mh95fmy7zrpVmL8CpQGirmNAr8bviupqSX4BiN
 JsjOaIWFbd15tmtcIRr9ygyReyr9DpipdN4qGf3pIBBGAQj2KR4tjY8vTI0zqQxk5GwQ
 Ocn5+xIj9xtTzKOSYGRzic4/Nq4+1UxKLsdYs+sy/07AkRNYMjjoJc4aPs5x3V89ALRG
 9rTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2Nsozhx6Vbc7+gevBK4suxhbi1tLEGMu37jB4LFRAPw=;
 b=IJ/EVPlQBDErSJZN6qnBUy7uGYo7SSyv+MlSQpuaceFct2KjRgaqhFY20r7NWvcZ11
 MDoNp3fT2+gimEupMIAhQtiETpvXL7l1blK4XHxU/C9td8oCdlf/Am1C+8trzNZhhIuZ
 IMw6EH76tigqaTirxPY9/C2ctxoqNe+MREKeeRP1JMH4OGuFBVHCjKPmgJfSAlYDqPSj
 zlFM1IdhioPHkskJIfF+FQVBflC0vPsRodAS4io42ceo4QceO8iWiwhqtD5U8q0l+dtk
 v0uosNbIcBRnZhxWIUiK9R5m0ZuTzfMKjHVUIkwzelZaGo1HraKxMhgzZNSZ5GaQQoCM
 iGaQ==
X-Gm-Message-State: AOAM531MrTEmzczE1PcrquIW7nlBnOLXqN2kaTz6wkzFhPw4oh1NVo+N
 0Usrnh/eQLCaF9eUNBGsFMZxSdHfNLltEw==
X-Google-Smtp-Source: ABdhPJwWctAz3Cj788czTSYpVZIZN+OINVRMuTkx431OvmGfAhyvUvX02fo6IXvszZ32Z1TA67pjlA==
X-Received: by 2002:a37:4587:: with SMTP id s129mr12042169qka.99.1602253110784; 
 Fri, 09 Oct 2020 07:18:30 -0700 (PDT)
Received: from ?IPv6:2620:10d:c0a8:11e8::107d? ([2620:10d:c091:480::1:f1f8])
 by smtp.gmail.com with ESMTPSA id t7sm5107903qkm.130.2020.10.09.07.18.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 09 Oct 2020 07:18:29 -0700 (PDT)
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>,
 linux-fsdevel@vger.kernel.org
References: <20201004180428.14494-1-willy@infradead.org>
 <20201004180428.14494-7-willy@infradead.org>
From: Josef Bacik <josef@toxicpanda.com>
Message-ID: <84f3800c-445e-6dbf-2381-56840d7bba69@toxicpanda.com>
Date: Fri, 9 Oct 2020 10:18:27 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201004180428.14494-7-willy@infradead.org>
Content-Language: en-US
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.160.195 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.195 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1kQtes-004JOg-E3
Subject: Re: [V9fs-developer] [PATCH 6/7] btrfs: Promote to unsigned long
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
> Fixes: 53b381b3abeb ("Btrfs: RAID5 and RAID6")
> Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>

Reviewed-by: Josef Bacik <josef@toxicpanda.com>

Thanks,

Josef


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
