Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D2A421C0C7
	for <lists+v9fs-developer@lfdr.de>; Sat, 11 Jul 2020 01:32:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ju2VP-0006Ry-D0; Fri, 10 Jul 2020 23:32:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <nazard@nazar.ca>) id 1ju2VN-0006Rm-I8
 for v9fs-developer@lists.sourceforge.net; Fri, 10 Jul 2020 23:32:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a8mXua/+pf0xwyAncboLdWQ9suD/hc8wf+xzJo2Jub0=; b=iymNMAt+LoPTLDqco+dDflO23y
 NiDfErmUJbUDObW/KCsxklcIyPgkdqIFJYIb5EnTPo51Kh6YxrFv+pCWAjmzWmqcCEd3keUq2snDj
 +kuBFVpCtiwQm/vP2hMTte+JlqcJVxsa9/oT46YH3qabogNe0Fy6uAtfLAvYTnfFpJFU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=a8mXua/+pf0xwyAncboLdWQ9suD/hc8wf+xzJo2Jub0=; b=aim6wOQcfUMyPj15oDDP0L5r92
 k/bo/Q2022T83V9D9Vyi40RkZA7CPN0KT5b9ILpmVWOdyr3mYo/Lw6VDaF8Mj+I3DNGCb28cOrk3q
 NVJX3K7RApN0FCpjiqpISON8owXziqXSzysk1S7Boncjwd3MrTYeF/4CFaJ/q6Ubm+QE=;
Received: from ny018.relay.arandomserver.com ([172.96.188.180])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ju2VG-002VOL-I9
 for v9fs-developer@lists.sourceforge.net; Fri, 10 Jul 2020 23:32:33 +0000
Received: from nyc006.hawkhost.com ([172.96.186.142])
 by se004.arandomserver.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92)
 (envelope-from <nazard@nazar.ca>)
 id 1ju1wc-0000xA-MN; Fri, 10 Jul 2020 17:56:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=nazar.ca;
 s=default; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version
 :Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=a8mXua/+pf0xwyAncboLdWQ9suD/hc8wf+xzJo2Jub0=; b=cIABLJRRMkWwES59M5tgDvsVWI
 cyzeLcK5JhmzpW1y+T+YuOHuY/lqZ3rxuqMjY8OvlEP83ZneHoIEnyvG0xA5LM8KoifG50AoBqJcw
 q1VfSm+IhJafIzTnBXfPC472uOPo1HLf2ohFJoIa6h41TM/b4XtFNbpZdgPMNURQt+da3wajAkt6s
 kue4QmbgwkcLcl3dISofOzZJLY7nv56Th1VtFv2bgbdHUrEcLxKfPQOvUWbyVQIQ4wfCJQuKUii/0
 tkgkZSWXITMI6NgW3IvsFmWjYNSRLXFc/gQFgcNlGX/aOP4K0u9JTHFbo94INgejWWAiQazPKi/HH
 Lu1rAjjw==;
Received: from [174.119.114.224] (port=51779 helo=[192.168.21.100])
 by nyc006.hawkhost.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <nazard@nazar.ca>)
 id 1ju1wb-0001JF-5l; Fri, 10 Jul 2020 18:56:37 -0400
To: Christoph Hellwig <hch@lst.de>, ericvh@gmail.com, lucho@ionkov.net,
 asmadeus@codewreck.org
References: <20200710085722.435850-1-hch@lst.de>
From: Doug Nazar <nazard@nazar.ca>
Message-ID: <5bee3e33-2400-2d85-080e-d10cd82b0d85@nazar.ca>
Date: Fri, 10 Jul 2020 18:56:35 -0400
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.0
MIME-Version: 1.0
In-Reply-To: <20200710085722.435850-1-hch@lst.de>
Content-Language: en-US
X-Get-Message-Sender-Via: nyc006.hawkhost.com: authenticated_id:
 nazard@nazar.ca
X-Authenticated-Sender: nyc006.hawkhost.com: nazard@nazar.ca
X-Originating-IP: 172.96.186.142
X-SpamExperts-Domain: nyc006.hawkhost.com
X-SpamExperts-Username: 172.96.186.142
Authentication-Results: arandomserver.com;
 auth=pass smtp.auth=172.96.186.142@nyc006.hawkhost.com
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.02)
X-Recommended-Action: accept
X-Filter-ID: Mvzo4OR0dZXEDF/gcnlw0f6LF1GdvkEexklpcFpSF5apSDasLI4SayDByyq9LIhVMuypr3GMSFaE
 uvJRzf/1yUTNWdUk1Ol2OGx3IfrIJKyP9eGNFz9TW9u+Jt8z2T3KT3YWyIaDV3adljNh4jqWUKSI
 QOeql20yiFNywEx1SjSqpHnwsZpH9mYdhK3M+qkbqiRLIcfmSdhJhNnOTpqRUUuf+eM3l5KPnbp/
 eQthjVNLgwTL2W1bPOGy+hBGRHuxJkHwcwZdqFJg2NUWc1YcXvxdBIPAoxSp6DmD3kr62KknbCKf
 FChxpHEycMbUVAzYcL5hlVgBODQauTp1/J67gUkXEz24JLM60oxXCmgGpGhwhmcuhmLiP1a/raCx
 FilUyJda7VCYQylwxTk+SG59pZAl8KjuuXzut5LRN3+1KzLohdJNqqo/lqC4rFTnLtWlJwFTBDk/
 FifQTS+EwSURDVprjQPFk8m4tSTfORUp3ykAEfCPURLBYQ96jXOCfPgM7yBxSvtE49xNPqsQk/m8
 3UI6DP9LYFhbnb1vtJJips71hJElceuRZYSlzyjl2t8oot0CfeUAb1ubnnvth5TXPvMUVT6hEJ33
 Zqh8Rt9f2+Ja8tTmww6d3C2rMChg9I1GSNhjzOZsqooLTt7iuA19HxRvrBU56+Gq1CsKFi4HMGDm
 ZAzkNNfC/oYmrWISYEHgneZ90yZRP/mZ05FXSQ7oSP0ZoxlUh1E50DkFVrC5mmTa2K186OjbtWyZ
 ReXkOW7QTPiGI9WvBsdInDten/s6zPvdHOR1u+8QOyZnun5jEnQ6L4bbC3LjdxFJDyottvPAgpqJ
 lqCh0E7QP78UadwZo0RVGZM+1wcbqYXM3ytmvbBz/byN7FajYmOyHLF0nUatASJFC/49WOPBr5nl
 EUI4xMQDKwJmo3AY//ulQjQy8hxFYb+WEaaSiV3zBSrHnWVE6LADrDXM4RByixAOHpDL5xFqmHrp
 mKsRnlUf/9yRY2QfEfTJcXezne5mI3fuj/LNOOo6xspor93/x8GltFtgvskYoN/g2a11WysdYadd
 IKYaHAwskslMOiSjwnYcoQfxAIRoFYTV6bX0TFzZ8IQWIj08OU/MCBTp7Xql3SIUUR9wgSVYm38H
 wlCsmYlLW+GHMzjrEHSA2dmr6tzwahc1cl1C5Qu1fkKEWyoySmDifC3rjuU3A3io6xJmD59iFVkb
 gdBkiJncLAR/qaxElieMsQKA1qwQKXzO6EftozfP8HPuQhCcctpQ4l5OT/VYcw/11p3btshdqNde
 jy9cf5FpO8nnxaGW4j3UiT8Y7DP2CmsurJ77B3ZRwlMfr5yxE+Uuosi7SS2Yz+KKdUcngqDt1A==
X-Report-Abuse-To: spam@se001.arandomserver.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ju2VG-002VOL-I9
Subject: Re: [V9fs-developer] [PATCH] net/9p: validate fds in p9_fd_open
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
Cc: v9fs-developer@lists.sourceforge.net,
 syzbot+e6f77e16ff68b2434a2c@syzkaller.appspotmail.com,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 2020-07-10 04:57, Christoph Hellwig wrote:

> diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
> index 13cd683a658ab6..1cd8ea0e493617 100644
> --- a/net/9p/trans_fd.c
> +++ b/net/9p/trans_fd.c
> @@ -803,20 +803,28 @@ static int p9_fd_open(struct p9_client *client, int rfd, int wfd)
>   		return -ENOMEM;
>   
>   	ts->rd = fget(rfd);
> +	if (!ts->rd)
> +		goto out_free_ts;
> +	if (!(ts->rd->f_mode & FMODE_READ))
> +		goto out_put_wr;

		goto out_put_rd;

unless I'm mistaken.

>   	ts->wr = fget(wfd);
> -	if (!ts->rd || !ts->wr) {
> -		if (ts->rd)
> -			fput(ts->rd);
> -		if (ts->wr)
> -			fput(ts->wr);
> -		kfree(ts);
> -		return -EIO;
> -	}
> +	if (!ts->wr)
> +		goto out_put_rd;
> +	if (!(ts->wr->f_mode & FMODE_WRITE))
> +		goto out_put_wr;
>   
>   	client->trans = ts;
>   	client->status = Connected;
>   
>   	return 0;
> +
> +out_put_wr:
> +	fput(ts->wr);
> +out_put_rd:
> +	fput(ts->rd);
> +out_free_ts:
> +	kfree(ts);
> +	return -EIO;
>   }
>   
>   static int p9_socket_open(struct p9_client *client, struct socket *csocket)
> 

Doug


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
