Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D2696632F34
	for <lists+v9fs-developer@lfdr.de>; Mon, 21 Nov 2022 22:46:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oxEcP-00031M-8q;
	Mon, 21 Nov 2022 21:46:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <skhan@linuxfoundation.org>) id 1oxEcO-00031G-AC
 for v9fs-developer@lists.sourceforge.net;
 Mon, 21 Nov 2022 21:46:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0+xfYS/683CuEX8Moz7DN5D+iq5a+HRddPc04OAxt08=; b=YFE0HC2utAoCr9ln6QMMFI4T/V
 yC481qg7SLvazRSR+rtC8eBcOWye4EG+sJo1KIyOSBraVI4CvBbo5J56hvu8Fzi+5RdBJCpQKagt/
 twcEYZTLYwwGvwV4/1f2bGjeg0D+HB+aK/I7Ag3NPojkjZkwBrzHu3z6BiCxG1tX0aME=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0+xfYS/683CuEX8Moz7DN5D+iq5a+HRddPc04OAxt08=; b=i0OMOOB5L4IJo2DO6XG/GEUnxb
 qZOPHgUOSeC5PYrC32pwk67tfT1wIvSwFhBay6DnV07bkQ7rxQvByNu5FdIlvjmskF3wrkjEyg5W1
 X0qg//Td2YJjyRpu3BA+G4qXN7bhGI3PALT09hC5e73YJvlRtCGQNh4Tas8oWia1R54c=;
Received: from mail-qt1-f177.google.com ([209.85.160.177])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oxEcN-0008NS-KH for v9fs-developer@lists.sourceforge.net;
 Mon, 21 Nov 2022 21:46:20 +0000
Received: by mail-qt1-f177.google.com with SMTP id l15so8184154qtv.4
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 21 Nov 2022 13:46:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=0+xfYS/683CuEX8Moz7DN5D+iq5a+HRddPc04OAxt08=;
 b=Tmrax2HtLx9acijQh4ktOiCFNspYBm9czQO9vC+hgh16yhXiq5RyvSKc/8X48Yn6bo
 htTajxPPiW0Lsmr5jl6ZJh1+6V/m5ChitgOSpS6KBQ7ll5X5P1skZcbsej2h/DApNnIq
 u0xC1JtTdPPMF5q+wPkS1LuhqaXUemqkmRceA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=0+xfYS/683CuEX8Moz7DN5D+iq5a+HRddPc04OAxt08=;
 b=aHHABp8KtR5oI9kpvM8TeaU9G5apFbu5q9Ff0jywZzVObN+fQ+T1a5o7D71oymR11X
 N5vbv1TNfnS9R1CVCkwGPQXo4OgAHlPMhYF8P2m8xi6XxECfNc1P+9R9dJUHluPQteM8
 XIA3RdK/+az0j6IM3aA1QmdjMgqYTJf+lKTG9nXmfvdxrCRQUMV5TCqYwOcHnlkNc+kX
 AZ7893tNQU1eicuRzm/nEO0Jfum/o4Kkd82E4OJzFlnTEINCIjN4bQfcV4RD/rMwOvLD
 U8rpHCWd+Tymw5eD8nyzidX0wKu4AJUfsfbrznVOLbzxY2K+SEsyCPTMudPQS/bc37rg
 p0yA==
X-Gm-Message-State: ANoB5pkdT1ckfnG8ITAgVwooZlAcu0PjFjlRtBsfIPeI2AbUfAqHuR8d
 8NNXcWw2H7t5XPOIsi5iqFlLKDVbuVM6dg==
X-Google-Smtp-Source: AA0mqf4lOq6werVuvT/Ru0/037+ZZBKwQ9dV2Uvyt9oiXBE03aeSGMACS9M8fMwvTL7wgcvnDkeJPA==
X-Received: by 2002:a05:6638:3786:b0:363:b82d:d510 with SMTP id
 w6-20020a056638378600b00363b82dd510mr9070708jal.112.1669066860689; 
 Mon, 21 Nov 2022 13:41:00 -0800 (PST)
Received: from [192.168.1.128] ([38.15.45.1]) by smtp.gmail.com with ESMTPSA id
 w11-20020a056638024b00b0037609ad8485sm4704611jaq.69.2022.11.21.13.40.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 21 Nov 2022 13:40:59 -0800 (PST)
Message-ID: <4585e331-03ad-959f-e715-29af15f63712@linuxfoundation.org>
Date: Mon, 21 Nov 2022 14:40:56 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Benjamin Coddington <bcodding@redhat.com>,
 David Howells <dhowells@redhat.com>
References: <c2ec184226acd21a191ccc1aa46a1d7e43ca7104.1669036433.git.bcodding@redhat.com>
 <cover.1669036433.git.bcodding@redhat.com>
 <382872.1669039019@warthog.procyon.org.uk>
 <51B5418D-34FB-4E87-B87A-6C3FCDF8B21C@redhat.com>
From: Shuah Khan <skhan@linuxfoundation.org>
In-Reply-To: <51B5418D-34FB-4E87-B87A-6C3FCDF8B21C@redhat.com>
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 11/21/22 07:34, Benjamin Coddington wrote: > On 21 Nov
 2022, at 8:56,
 David Howells wrote: > >> Benjamin Coddington <bcodding@redhat.com>
 wrote: >> >>> Since moving to memalloc_nofs_save/restore, S [...] 
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.177 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.177 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1oxEcN-0008NS-KH
Subject: Re: [V9fs-developer] [PATCH v1 2/3] Treewide: Stop corrupting
 socket's task_frag
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, samba-technical@lists.samba.org,
 Shuah Khan <skhan@linuxfoundation.org>,
 Valentina Manea <valentina.manea.m@gmail.com>, linux-nvme@lists.infradead.org,
 Philipp Reisner <philipp.reisner@linbit.com>,
 Joseph Qi <joseph.qi@linux.alibaba.com>, Eric Dumazet <edumazet@google.com>,
 linux-nfs@vger.kernel.org, Marc Dionne <marc.dionne@auristor.com>,
 Shuah Khan <shuah@kernel.org>, Christoph Hellwig <hch@lst.de>,
 Mike Christie <michael.christie@oracle.com>, drbd-dev@lists.linbit.com,
 linux-cifs@vger.kernel.org, Sagi Grimberg <sagi@grimberg.me>,
 linux-scsi@vger.kernel.org, Mark Fasheh <mark@fasheh.com>,
 linux-afs@lists.infradead.org, cluster-devel@redhat.com,
 Christine Caulfield <ccaulfie@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
 Ilya Dryomov <idryomov@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 Anna Schumaker <anna@kernel.org>, Eric Van Hensbergen <ericvh@gmail.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Josef Bacik <josef@toxicpanda.com>, nbd@other.debian.org,
 linux-block@vger.kernel.org, David Teigland <teigland@redhat.com>,
 Joel Becker <jlbec@evilplan.org>, v9fs-developer@lists.sourceforge.net,
 Keith Busch <kbusch@kernel.org>, ceph-devel@vger.kernel.org,
 Xiubo Li <xiubli@redhat.com>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Jens Axboe <axboe@kernel.dk>, Chris Leech <cleech@redhat.com>,
 open-iscsi@googlegroups.com, "Martin K. Petersen" <martin.petersen@oracle.com>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Steve French <sfrench@samba.org>,
 =?UTF-8?Q?Christoph_B=c3=b6hmwalder?= <christoph.boehmwalder@linbit.com>,
 Chuck Lever <chuck.lever@oracle.com>, Lee Duncan <lduncan@suse.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lars Ellenberg <lars.ellenberg@linbit.com>,
 "David S. Miller" <davem@davemloft.net>, ocfs2-devel@oss.oracle.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 11/21/22 07:34, Benjamin Coddington wrote:
> On 21 Nov 2022, at 8:56, David Howells wrote:
> 
>> Benjamin Coddington <bcodding@redhat.com> wrote:
>>
>>> Since moving to memalloc_nofs_save/restore, SUNRPC has stopped setting the
>>> GFP_NOIO flag on sk_allocation which the networking system uses to decide
>>> when it is safe to use current->task_frag.
>>
>> Um, what's task_frag?
> 
> Its a per-task page_frag used to coalesce small writes for networking -- see:
> 
> 5640f7685831 net: use a per task frag allocator
> 
> Ben
> 
> 

I am not seeing this in the mainline. Where can find this commit?

thanks,
-- Shuah


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
