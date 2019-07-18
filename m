Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E796CC92
	for <lists+v9fs-developer@lfdr.de>; Thu, 18 Jul 2019 12:10:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ho3NE-000374-Ng; Thu, 18 Jul 2019 10:10:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <matthieu.baerts@tessares.net>) id 1ho3ND-00036W-4R
 for v9fs-developer@lists.sourceforge.net; Thu, 18 Jul 2019 10:10:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:References:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bN+BZvuoQLaDU24+7t/mq8P5astmbXomhP6EYVB2/6w=; b=RMs1jxhVxSR86kcpsWQyqGPtCM
 cfnVuZFS8OehBrLf+m6WwD6BA/4cnZzCd2qNPyGlVymSQe1MjqhsEHjAl6ea/dsg6AjQARi/dOiDc
 i3+Nc3FYVDnwayZ1eN4jRn8Gzshw6YqrDlsfOt0RzereK+5f/CpU0jveaugIdkwE0mwM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:References:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bN+BZvuoQLaDU24+7t/mq8P5astmbXomhP6EYVB2/6w=; b=PvwnzG91TL9hDYf0Ra6mI/dDM3
 SHyojxZAfMZf/CjZ0nNeNmmuy4Bt84yDWikCRmhiQw6dWzoBfcLlWXCTEXECytNPFpTIx0oNbPAtl
 454GNYghQZ0+Buahi1ignSHZGqSXadd9fFqTp4BWiipnYN2ggHZkS1M2RaTBJf8yjMrQ=;
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1ho3NB-006E8q-En
 for v9fs-developer@lists.sourceforge.net; Thu, 18 Jul 2019 10:10:51 +0000
Received: by mail-ed1-f67.google.com with SMTP id w20so29649257edd.2
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 18 Jul 2019 03:10:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tessares-net.20150623.gappssmtp.com; s=20150623;
 h=subject:from:to:cc:references:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=bN+BZvuoQLaDU24+7t/mq8P5astmbXomhP6EYVB2/6w=;
 b=abYmsaNLSKnWkqEBEZ5rYABeFNiDu6AmEYui4V8JzCRsPOxaO/S3+9+O1rTSBFFGiQ
 VfelwM4FQOirSxYTjL2sNreL/2ai8opCkEQKzwQxRsM2+VgrpZvyjQmnaVl1FEHF28nG
 uzrS0o3EsL2G6m8dzoMfXA0qik0ywCGenvsjIPnjC6+RPOLXCINYaYloF4Wo/kKsr11s
 C57F1eOwjoqspxjLiNtOJ8CscnuLnM+C7Y3VjvfAdDlu7P+m5LeD8DCDHSuPF2nZmBuU
 IEBvgj6uLkhpdyKcNAAOpfz6k7B1jxG2z8vKSGEd4VsrVoY0ReDeCFeM1+GhCOf8npi4
 jW7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=bN+BZvuoQLaDU24+7t/mq8P5astmbXomhP6EYVB2/6w=;
 b=HPjWuglPI6jdMgw3NsIER4AUCw3Qxr3/3eKYrWhUwfYFXrr6lf0WwgTIQkQ0GMCRSe
 MM3x1FvE8Bp10KbtM5cysPCr5IMQ9+WWt120thCBXiAfYZkaWT1RB9juJ4UQKMUgCG9U
 vXzTAq625QihpRb8NFovKzElAp3PF+YPSrf3WMhdQf79lf2+wQPZp5VuUwCPVjUDEL5j
 h4BiIJGgKnWrAvMgq/yZUCr6rnGw8pPWpnmpz2nQrEuEWs01NtHgEYBMlU4Nb8QBHD47
 2cp8t/AmfIa8kS/aMf0+HiFwAynWQ/sjBhcj9NF1KSiHK9Ev3QAIo+ujqLyBpqLYc2W/
 a4wg==
X-Gm-Message-State: APjAAAVgwHT3NWHmcNbmRNiP7z/RI5222D9imVd4Br6jGmUm6rtGR4DE
 44dKeXBS8KPh5D0x2GLqUn4yKGioIJLNyw==
X-Google-Smtp-Source: APXvYqzGNPqDA9Iq4ZMkkw8GJBpx/s8iPABGAo8mYj8UqpDJuUNM1S58JE5D/3kcE4NDZyNWUnPTQQ==
X-Received: by 2002:a17:906:604c:: with SMTP id
 p12mr34985645ejj.26.1563444642823; 
 Thu, 18 Jul 2019 03:10:42 -0700 (PDT)
Received: from tsr-lap-08.nix.tessares.net ([213.211.153.55])
 by smtp.gmail.com with ESMTPSA id q14sm5506226eju.47.2019.07.18.03.10.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 18 Jul 2019 03:10:41 -0700 (PDT)
From: Matthieu Baerts <matthieu.baerts@tessares.net>
To: Dominique Martinet <asmadeus@codewreck.org>
References: <0757f061-0685-6e8e-9e6f-035d0f57eaf8@tessares.net>
 <20190715113251.GA28601@nautica>
 <f6513948-312e-2edb-44e7-40217741e9ba@tessares.net>
 <20190715161501.GA6535@nautica>
 <2dfd3bab-f7ce-56ef-9e39-eb774781272e@tessares.net>
 <20190717204349.GA14632@nautica>
 <294f9793-94f9-a3ec-97ab-a691d27736c3@tessares.net>
Openpgp: preference=signencrypt
Autocrypt: addr=matthieu.baerts@tessares.net; keydata=
 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
 fQpO7wDE/Q==
Message-ID: <988f6ad4-3ae9-d47e-706a-e784a80d6e8b@tessares.net>
Date: Thu, 18 Jul 2019 12:10:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <294f9793-94f9-a3ec-97ab-a691d27736c3@tessares.net>
Content-Language: en-US
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.67 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: tessares.net]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ho3NB-006E8q-En
Subject: Re: [V9fs-developer] New KASAN warnings with kernel v4.14.133
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
Cc: Sasha Levin <sashal@kernel.org>, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Dominique,

On 18/07/2019 11:31, Matthieu Baerts wrote:
> Hi Dominique,
> 
> Thank you for your answer!
> 
> On 17/07/2019 22:43, Dominique Martinet wrote:
>> Matthieu Baerts wrote on Wed, Jul 17, 2019:
>>>> The only one that might be related is "9p: p9dirent_read: check
>>>> network-provided name length" ; but even that likely shouldn't kick in.
>>>
>>> Two days ago, I only had the time to launch a kind of 'git bisect' to
>>> find which of the new 9p patches caused the issue. It seems you were
>>> right, without this "9p: p9dirent_read: check network-provided name
>>> length" patch, I no longer have the KASAN warning on this v4.14 kernel.
>>
>> I still have no idea how the two relate but that's a good start...
>>
>>>> You can check if it was implied by adding debug=1 to your 9p mount
>>>> options, assuming it is compiled with debugs (I still plan on making
>>>> that the default eventually as debug=1 only enables *error* messages)
>>>
>>> I will check how to enable these debugs (is it a kernel option or you
>>> want the output of pr_debug?) and report the logs here.
>>
>> You basically just need to check if CONFIG_NET_9P_DEBUG is set in your
>> kernel config and add 'debug=1' to your mount command line options, that
>> should probably print something before the kasan error (like
>> p9dirent_read failing, as without the patch it could not return an
>> error) - the pr_debug messages will go to dmesg.
> 
> I might have done something wrong because I don't see any debug
> information printed in dmesg, at least not more than before:

I just looked at the code and it seems debug=1 means I will only get the
messages related to the errors (P9_DEBUG_ERROR).

With debug=7, I have many more messages, too many for my VMs in fact :)

(...)
>> If you can it might help to change the error message after p9pdu_readf
>> to P9_DEBUG_ERROR as well in case that is the one; it would be possible
>> to print P9_DEBUG_9P messages by setting the bit but it might be too
>> verbose to reproduce, it's probably better to raise the message to error
>> here.
>>
>> ---
>> diff --git a/net/9p/protocol.c b/net/9p/protocol.c
>> index 462ba144cb39..0bc19088a53b 100644
>> --- a/net/9p/protocol.c
>> +++ b/net/9p/protocol.c
>> @@ -621,7 +621,8 @@ int p9dirent_read(struct p9_client *clnt, char *buf, int len,
>>  	ret = p9pdu_readf(&fake_pdu, clnt->proto_version, "Qqbs", &dirent->qid,
>>  			  &dirent->d_off, &dirent->d_type, &nameptr);
>>  	if (ret) {
>> -		p9_debug(P9_DEBUG_9P, "<<< p9dirent_read failed: %d\n", ret);
>> +		p9_debug(P9_DEBUG_ERROR, "<<< p9dirent_read failed: %d\n",
>> +			 ret);
>>  		trace_9p_protocol_dump(clnt, &fake_pdu);
>>  		return ret;
>>  	}
>> ---
> 
> I can sure do that but before, when you say:
> 
>> the pr_debug messages will go to dmesg.
> 
> Are they really "pr_debug" message? Just to know if I need to do
> something special at the compilation time.

It seems that pr_notice() is used so no need to do any other
manipulations at the compilation time.

I did the modification you proposed in protocol.c and this
"p9dirent_read failed" message is not printed.

I also tried to use "debug=3" but I don't have any other messages that
are printed in dmesg.

If you have any other ideas, do not hesitate to share, I now have one
setup ready to test that.

Cheers,
Matt
-- 
Matthieu Baerts | R&D Engineer
matthieu.baerts@tessares.net
Tessares SA | Hybrid Access Solutions
www.tessares.net
1 Avenue Jean Monnet, 1348 Louvain-la-Neuve, Belgium


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
