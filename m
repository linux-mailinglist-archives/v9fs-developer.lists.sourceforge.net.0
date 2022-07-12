Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C7A5710CD
	for <lists+v9fs-developer@lfdr.de>; Tue, 12 Jul 2022 05:24:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oB6W2-0003Yz-Kb; Tue, 12 Jul 2022 03:24:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hbh25y@gmail.com>) id 1oB6W0-0003Yt-TC
 for v9fs-developer@lists.sourceforge.net; Tue, 12 Jul 2022 03:24:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OSSM+MSc4W5cafWf+JO3va4gEwypg/7RgvRHGJ59Jpo=; b=AM63Wcou6mRI0g9W741NFaXld8
 LXVHC4GqY/tYyROuhZgc3u29AUhPb8j+o+TQXnPUWYpdNTjFhZesBGuBKpGlPHmcOVzhz7cFJW0R+
 x8wx80p4xM7WUJ5keBx/E/5hhNylsn0noZr2O+yjfTk1bDV28yr3Uumf+pHTTt0ed/zk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OSSM+MSc4W5cafWf+JO3va4gEwypg/7RgvRHGJ59Jpo=; b=Z+iYMrSacbBM3SPeKmvEO3/my5
 YLskZRMYJczg5RP5Fh9r75qc+SI7wYMG9dw1iG908idL5t3nDvTETMnwVmuCfH0m2bjvawJtRUTvo
 I2lUS81z1ryr4EVBuyafo21R632/V7GN4oejkQO1y/3GVy5fwRpM0FaIDUfUAFlAFe5w=;
Received: from mail-pj1-f68.google.com ([209.85.216.68])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oB6Vy-0000nL-Sa
 for v9fs-developer@lists.sourceforge.net; Tue, 12 Jul 2022 03:24:48 +0000
Received: by mail-pj1-f68.google.com with SMTP id
 o3-20020a17090a744300b001ef8f7f3dddso6690233pjk.3
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 11 Jul 2022 20:24:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=OSSM+MSc4W5cafWf+JO3va4gEwypg/7RgvRHGJ59Jpo=;
 b=cCy/01FQWPWE0Tve4CkNo+KegP5fhGB6qXq6P2tD0FzJKd4oZo17AfG4456RFmtmgZ
 llZqHxUEDkBN+7zbMzYbL7TDB6sCHHptVUDTkXJ6wNGMZ+dSSVxKEuFFd7ERQSlPCysV
 mn5zRc/1HW48lyxF4OrPBZICtb1xWe5Gvd4exxEphMclslZPNbv/KyFqB9fd4S1AJpdF
 3eeAy8FGRtUZwQOnl9sRfdRfVDSriQmFd2QOmTp4A81H03tSis+WLtQHhfc6DB7bNajl
 eKohariMPEbSsWNWZUrjRqHcv7sKVGCX/t8E7wSTvW2KsXAgItTIzURKgsbNX/0g/YO/
 TeQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=OSSM+MSc4W5cafWf+JO3va4gEwypg/7RgvRHGJ59Jpo=;
 b=yfQud11xdfR9wppH2wdDGVBifEAnpiiTkLKx0JVX/IAiH2jEWR/3eMfZwL1dWjciJ0
 +fRNSfk8VJ6yHDsE8akS5InS76yo80B6FTyeg6VNEPp8kjfPYiOhBaPx4ljqaufziEls
 w6BFCqyb2AZCd6od2fbSyxyinGgRYoWHQsVJ4ZyqY/sqsr4s0yPf4djNnye7QjykNc3W
 lnfUckH/LwWQBWsFWPdvDPYw1x8ve4KfQOa2eBqzKe6A1AR1RvfLdDCoaSf3fLiRo27C
 KNX56g1YcktqQYBiPsV/aHszumpKT29C9o6FthJ7Ts21nJ/COgpGEKvs2BPz5N2XTJTp
 Oj4w==
X-Gm-Message-State: AJIora/peps3I/RGJoEQRn07Y+IN+lzK3YR3Z15MRC0uC7hyRGOr0dYj
 gsfoirYntKwQRgc0gIZ3fjw=
X-Google-Smtp-Source: AGRyM1sdRMSgXogG7rND064GIevAmoTe6xOv9PP2MJqV6el9DYNm6hmg6Vh7A5r3FZQDl+wbbs33IQ==
X-Received: by 2002:a17:903:240e:b0:168:ea13:f9e0 with SMTP id
 e14-20020a170903240e00b00168ea13f9e0mr21885579plo.6.1657596281194; 
 Mon, 11 Jul 2022 20:24:41 -0700 (PDT)
Received: from [192.168.50.247] ([129.227.148.126])
 by smtp.gmail.com with ESMTPSA id
 g28-20020aa796bc000000b0052a75004c51sm5701024pfk.146.2022.07.11.20.24.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 11 Jul 2022 20:24:40 -0700 (PDT)
Message-ID: <f68df7cf-4b72-4c01-9492-103fa67c5e99@gmail.com>
Date: Tue, 12 Jul 2022 11:24:36 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: asmadeus@codewreck.org
References: <20220711065907.23105-1-hbh25y@gmail.com>
 <YsvTvalrwd4bxO75@codewreck.org>
From: Hangyu Hua <hbh25y@gmail.com>
In-Reply-To: <YsvTvalrwd4bxO75@codewreck.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2022/7/11 15:39, > Hangyu Hua wrote on Mon, Jul 11, 2022
 at 02:59:07PM +0800: >> A ref got in p9_tag_lookup needs to be put when
 functions
 enter the >> error path. >> >> Fix this by adding p9_req [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [hbh25y[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.68 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.68 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1oB6Vy-0000nL-Sa
Subject: Re: [V9fs-developer] [PATCH] net: 9p: fix possible refcount leak in
 p9_read_work() and recv_done()
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
Cc: lucho@ionkov.net, ericvh@gmail.com, netdev@vger.kernel.org,
 linux_oss@crudebyte.com, linux-kernel@vger.kernel.org, edumazet@google.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, tomasbortoli@gmail.com,
 pabeni@redhat.com, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 2022/7/11 15:39, asmadeus@codewreck.org wrote:
> Hangyu Hua wrote on Mon, Jul 11, 2022 at 02:59:07PM +0800:
>> A ref got in p9_tag_lookup needs to be put when functions enter the
>> error path.
>>
>> Fix this by adding p9_req_put in error path.
> 
> I wish it was that simple.
> 
> Did you actually observe a leak? >
>> diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
>> index 8f8f95e39b03..c4ccb7b9e1bf 100644
>> --- a/net/9p/trans_fd.c
>> +++ b/net/9p/trans_fd.c
>> @@ -343,6 +343,7 @@ static void p9_read_work(struct work_struct *work)
>>   			p9_debug(P9_DEBUG_ERROR,
>>   				 "No recv fcall for tag %d (req %p), disconnecting!\n",
>>   				 m->rc.tag, m->rreq);
>> +			p9_req_put(m->rreq);
>>   			m->rreq = NULL;
>>   			err = -EIO;
>>   			goto error;
>> @@ -372,6 +373,8 @@ static void p9_read_work(struct work_struct *work)
>>   				 "Request tag %d errored out while we were reading the reply\n",
>>   				 m->rc.tag);
>>   			err = -EIO;
>> +			p9_req_put(m->rreq);
>> +			m->rreq = NULL;
>>   			goto error;
>>   		}
>>   		spin_unlock(&m->client->lock);
> 
> 
> for tcp, we still have that request in m->req_list, so we should be
> calling p9_client_cb which will do the p9_req_put in p9_conn_cancel.
> 
> If you do it here, you'll get a refcount overflow and use after free.
> 


That's a little weird. If you are right, the three return paths of this 
function are inconsistent with the handling of refcount.

static void p9_read_work(struct work_struct *work)
{
...
	if ((m->rreq) && (m->rc.offset == m->rc.capacity)) {
		p9_debug(P9_DEBUG_TRANS, "got new packet\n");
		m->rreq->rc.size = m->rc.offset;
		spin_lock(&m->client->lock);
		if (m->rreq->status == REQ_STATUS_SENT) {
			list_del(&m->rreq->req_list);
			p9_client_cb(m->client, m->rreq, REQ_STATUS_RCVD);	<---- [1]
		} else if (m->rreq->status == REQ_STATUS_FLSHD) {
			/* Ignore replies associated with a cancelled request. */
			p9_debug(P9_DEBUG_TRANS,
				 "Ignore replies associated with a cancelled request\n");	<---- [2]
		} else {
			spin_unlock(&m->client->lock);
			p9_debug(P9_DEBUG_ERROR,
				 "Request tag %d errored out while we were reading the reply\n",
				 m->rc.tag);
			err = -EIO;
			goto error;	<---- [3]
		}
		spin_unlock(&m->client->lock);
		m->rc.sdata = NULL;
		m->rc.offset = 0;
		m->rc.capacity = 0;
		p9_req_put(m->rreq);	<---- [4]
		m->rreq = NULL;
	}
...
error:
	p9_conn_cancel(m, err);		<---- [5]
	clear_bit(Rworksched, &m->wsched);
}

There are three return paths here, [1] and [2] and [3].

[1]: m->rreq will be put twice in [1] and [4]. And m->rreq will be 
deleted from the m->req_list in [1].

[2]: m->rreq will be put in [4]. And m->rreq will not be deleted from 
m->req_list.

[3]: m->rreq will be put in [5]. And m->rreq will be deleted from the 
m->req_list in [5].

If p9_tag_lookup keep the refcount of req which is in m->req_list. There 
will be a double put in return path [1] and a potential UAF in return 
path [2]. And this also means a req in m->req_list without getting 
refcount before p9_tag_lookup.

static void p9_write_work(struct work_struct *work)
{
...
		list_move_tail(&req->req_list, &m->req_list);

		m->wbuf = req->tc.sdata;
		m->wsize = req->tc.size;
		m->wpos = 0;
		p9_req_get(req);
...
}

But if you check out p9_write_work, a refcount already get after 
list_move_tail. We don't need to rely on p9_tag_lookup to keep a list's 
refcount. Whatsmore, code comments in p9_tag_alloc also proves that the 
refcount get by p9_tag_lookup is a temporary refcount.

So i still think there may be a refcount leak.

>> diff --git a/net/9p/trans_rdma.c b/net/9p/trans_rdma.c
>> index 88e563826674..82b5d6894ee2 100644
>> --- a/net/9p/trans_rdma.c
>> +++ b/net/9p/trans_rdma.c
>> @@ -317,6 +317,7 @@ recv_done(struct ib_cq *cq, struct ib_wc *wc)
>>   	/* Check that we have not yet received a reply for this request.
>>   	 */
>>   	if (unlikely(req->rc.sdata)) {
>> +		p9_req_put(req);
>>   		pr_err("Duplicate reply for request %d", tag);
>>   		goto err_out;
>>   	}
> 
> This one isn't as clear cut, I see that they put the client in a
> FLUSHING state but nothing seems to acton on it... But if this happens
> we're already in the use after free realm -- it means rc.sdata was
> already set so the other thread could be calling p9_client_cb anytime if
> it already hasn't, and yet another thread will then do the final ref put
> and free this.
> We shouldn't free this here as that would also be an overflow. The best
> possible thing to do at this point is just to stop using that pointer.
>

But p9_tag_lookup have a lock inside. Doesn't this mean p9_tag_lookup 
won't return a freed req? Otherwise we should fix the lock to avoid 
falling into the use after free realm.

Thanks,
Hangyu
> 
> If you actually run into a problem with these refcounts (should get a
> warning on umount that something didn't get freed) then by all mean
> let's look further into it, but please don't send such patches without
> testing the error paths you're "fixing" -- I'm pretty sure a reproducer
> to hit these paths would bark errors in dmesg as refcount has an
> overflow check.
> 
> --
> Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
