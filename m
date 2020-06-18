Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A77E1FFBCC
	for <lists+v9fs-developer@lfdr.de>; Thu, 18 Jun 2020 21:28:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jm0Cv-0002Ui-Nq; Thu, 18 Jun 2020 19:28:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <alexander.kapshuk@gmail.com>) id 1jm0Cu-0002Ua-EC
 for v9fs-developer@lists.sourceforge.net; Thu, 18 Jun 2020 19:28:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2r/eBSRHwhICENHrw3CBIAzj43f+ABt0HR5OQ089hu0=; b=jJ5lJ0+iLUeMqH7636IUH5CydS
 Mtlul+vEmh+IMuNMaYtBdjxSEWC5bX36jy3MsCF4kqy9INKpolTh8rOCofhn0IhRizPyVYEN5ScPF
 QjrYLlc38KRwKG79etKreYx1/5gQrKZoJb4s6Rzu+2nJf8wBVpxdJsfEKVOz0LbOpOHk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2r/eBSRHwhICENHrw3CBIAzj43f+ABt0HR5OQ089hu0=; b=MTozpKZCLswnrO2O/hjU8v56OC
 7eMazNz7Djphyri5Wajgn1Mp38cSWEkyhebXQ6wMPh1DHDCqa1vr2WTPaUzDFNMt18ICRIcuO7OGG
 DOZSutIC3xc4e/RkA8Mu0RNmIXejUCr3513VRVEp3z7deFUUGgTBZWZbZ4J2JNiMMjx4=;
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jm0Cs-00B54x-LI
 for v9fs-developer@lists.sourceforge.net; Thu, 18 Jun 2020 19:28:16 +0000
Received: by mail-io1-f67.google.com with SMTP id y5so8399916iob.12
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 18 Jun 2020 12:28:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2r/eBSRHwhICENHrw3CBIAzj43f+ABt0HR5OQ089hu0=;
 b=BtM/gutfGJHtM11Jf9/v446Zf9RvLqmaeBIDWHG6G2ucdVNCI233pCswnZ80j8+FYa
 46KUD4zDUIp5KUiQIm9+eq8/vwV9bebJDLpFSc3qwlZsGzjyG9lcGCz9VShWnkGsxyG8
 YHjcHB6FUSRjtpHF8s47A45wU8sBLqzHD/fv74QdPhso3ZNeDN91EwVFJKmX+Ba0uaSa
 Dhtqd8iSVzJqBJEPbZG7MTQQId58Injtd5bvcDwRNLpLMfb6wMdDySJcnze/ygOyd20+
 rV7NXEooNHMYsU6q+u2vn0yuHl0tI0W22sNwe14f+MAgSe7jdESdqq65lzKvmv8VH9bN
 3Bnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2r/eBSRHwhICENHrw3CBIAzj43f+ABt0HR5OQ089hu0=;
 b=DA4azEhq7CgxEHr3v2dT8+ZdJSovEMIbVXrhyZS1V3fjx+aON43yZgJ/THeLEK/IiR
 SWaPOD54PK7Kka0MieiOoOHl5SzE/E+Bbhm6VAkpi0uYJMgqBg92QkK1PveXEY8CQw3w
 sl2jCzuzCCbgYD6+BlESNgNuvLUo2UFGQpt2EufaOxKKMt3JoQ54+AR7X5TLPtzj2W7r
 JkXlPGZAZ0Vniigqn4fHnXf85pw+xWIsyoStrzoCAJRlk+5qCBEcvLMQcKznaejZ+kWe
 1vwYExYO1b8pUuELlKvKV5UEkU1x8aI3qlg5RA+0uc7GZM5BHIzO5RB4sv4BQ0iyjx5T
 x4Xw==
X-Gm-Message-State: AOAM530jWjc7T/tHMhs2mU9BQ6ep/ZWSRF0ihorfuXvLIJa98E0IMtro
 aRk4ukf97WUY3Qnmry2PFSHBIn3XJ1CpItZIUT0=
X-Google-Smtp-Source: ABdhPJy3XGVVGxJ8arfWbqO0G1lLD28MUnxV6J8S6Ws55u6ixT26Q0Y9z2AtDMJGarttiZU3ejUeWcvCgdJbL7SB5oI=
X-Received: by 2002:a05:6638:d05:: with SMTP id q5mr196255jaj.2.1592508488960; 
 Thu, 18 Jun 2020 12:28:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200618183417.5423-1-alexander.kapshuk@gmail.com>
 <20200618190934.GB20699@nautica>
In-Reply-To: <20200618190934.GB20699@nautica>
From: Alexander Kapshuk <alexander.kapshuk@gmail.com>
Date: Thu, 18 Jun 2020 22:27:32 +0300
Message-ID: <CAJ1xhMW6_EdCh7TB0L5RD9BkjtozHtv2hbTWRzJ=S9Fq9eefew@mail.gmail.com>
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (alexander.kapshuk[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jm0Cs-00B54x-LI
Subject: Re: [V9fs-developer] [PATCH] net/9p: Fix sparse endian warning in
 trans_fd.c
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
 linux-kernel <linux-kernel@vger.kernel.org>, kuba@kernel.org,
 v9fs-developer@lists.sourceforge.net, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Jun 18, 2020 at 10:09 PM Dominique Martinet
<asmadeus@codewreck.org> wrote:
>
> Alexander Kapshuk wrote on Thu, Jun 18, 2020:
> > Address sparse endian warning:
> > net/9p/trans_fd.c:932:28: warning: incorrect type in assignment (different base types)
> > net/9p/trans_fd.c:932:28:    expected restricted __be32 [addressable] [assigned] [usertype] s_addr
> > net/9p/trans_fd.c:932:28:    got unsigned long
> >
> > Signed-off-by: Alexander Kapshuk <alexander.kapshuk@gmail.com>
>
> INADDR_ANY is 0 so this really is noop but sure, less warnings is always
> good. I'll take this one for 5.9.
> Thanks!
> --
> Dominique

Noted.
Thanks.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
