Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1816D57325C
	for <lists+v9fs-developer@lfdr.de>; Wed, 13 Jul 2022 11:21:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oBYYi-0003GD-LA; Wed, 13 Jul 2022 09:21:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1oBYYU-0003Bs-Fu
 for v9fs-developer@lists.sourceforge.net; Wed, 13 Jul 2022 09:21:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3OMBEO5LvXeVeXcuw8XZnY/HAiyjTi9UKlfBZPl5QP8=; b=CYzZe/b24/uhytQDZXWyXEa8zl
 DLW9+hkhifdeGVzYonicqK1Zwut0+V9wV582ntD7L5gMBkPbkbdMYwd9r+J7HjCVCY2Z9BeiuZ2rU
 mx6OCIeuzuxk6JvHaiiCRGnNS5m99k5ZYhOaWr6pOA/jKMAwlH/htbNQujEB1qEhfj3k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3OMBEO5LvXeVeXcuw8XZnY/HAiyjTi9UKlfBZPl5QP8=; b=ffWwdV1vwpntOkvmomTV90vaM4
 i7Enakfz2/cazj6U0cYR58mxZ7wmzITKYhvUCCJMkDTZ99KofjsA5FAsXdY0kcIeWZatwvqDlWjH8
 JmWQxsGxshmhLc1sOuz/kamhTxlkxd9sFgAKXRv5/p9lfX2BQq1pPyez1Nmm5MMPfJIQ=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oBYYQ-00FXri-4x
 for v9fs-developer@lists.sourceforge.net; Wed, 13 Jul 2022 09:21:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=3OMBEO5LvXeVeXcuw8XZnY/HAiyjTi9UKlfBZPl5QP8=; b=Slm1e9jU7K4DAnTnTe9ef5cc1e
 ETVKJ7ydj1dspJaa4koBUTFNxfpbCMYcoBpXeX+zf+Bkm6si98X8V/ovJ591qHYufKtQrK3eZbw6n
 49vMysZFCwC3OE76jLV/FyFhilfM4PS9Ff0JKVM1kX3QnVkmThUNp3/S78VSEKVFBBGsxF5dTa04x
 GJmidfCSY8b4yo4FNR0mK1DrN3AFA+QBQCVhY3iAltI10WymSLlspIoQXi3TjyXqCacuxjXZ4px9F
 99ySG+mN5ALZ7ey0nbGdWP2gU5hU3/wFdcDEU5HgbU/NcJqj7+9s0vYSRdTHJHCgiqqab6FRnNYr7
 Z32rXS8S0OwgViX2/TG0IdnQy+oS/fQoZPYeKhYiUBsic85M2NoSQ+cxvT/tYO83MU9z2rq1Qhzqa
 IaHJelMtOxqz/9slzOAqNlTckLef85dIsny2u5SQi5SEl53USpw4vLauOPUbpyXGBG1YYQI55WI1z
 xT28VzM1rGa0s1lADYqV/j/dcFPpkfSqiy5ufxw25DrqgXxGWWQeI7+b57BcgidztLkb9twKfAM0M
 l8PBJn07CsJR8wthQYPbevqvDf69i7NDePtO/QPsFUbneW0NQlUH6i7mEOoksmKj0mMbwh3Z0O+E/
 RaPIIbYUboDZUtOeyXabcST0VclZH6qE6xCk6/P10=;
To: Dominique Martinet <asmadeus@codewreck.org>
Date: Wed, 13 Jul 2022 11:19:48 +0200
Message-ID: <4284956.GYXQZuIPEp@silver>
In-Reply-To: <Ys3jjg52EIyITPua@codewreck.org>
References: <cover.1657636554.git.linux_oss@crudebyte.com>
 <Ys3Mj+SgWLzhQGWK@codewreck.org> <Ys3jjg52EIyITPua@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Dienstag, 12. Juli 2022 23:11:42 CEST Dominique Martinet
 wrote: > Dominique Martinet wrote on Wed, Jul 13, 2022 at 04:33:35AM +0900:
 > > Christian Schoenebeck wrote on Tue, Jul 12, 2022 at 04:31:36 [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1oBYYQ-00FXri-4x
Subject: Re: [V9fs-developer] [PATCH v5 11/11] net/9p: allocate appropriate
 reduced message buffers
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Nikolay Kichukov <nikolay@oldum.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Dienstag, 12. Juli 2022 23:11:42 CEST Dominique Martinet wrote:
> Dominique Martinet wrote on Wed, Jul 13, 2022 at 04:33:35AM +0900:
> > Christian Schoenebeck wrote on Tue, Jul 12, 2022 at 04:31:36PM +0200:
> > > So far 'msize' was simply used for all 9p message types, which is far
> > > too much and slowed down performance tremendously with large values
> > > for user configurable 'msize' option.
> > > 
> > > Let's stop this waste by using the new p9_msg_buf_size() function for
> > > allocating more appropriate, smaller buffers according to what is
> > > actually sent over the wire.
> > > 
> > > Only exception: RDMA transport is currently excluded from this, as
> > > it would not cope with it. [1]
> 
> Thinking back on RDMA:
> - vs. one or two buffers as discussed in another thread, rdma will still
> require two buffers, we post the receive buffer before sending as we
> could otherwise be raced (reply from server during the time it'd take to
> recycle the send buffer)
> In practice the recv buffers should act liks a fifo and we might be able
> to post the buffer we're about to send for recv before sending it and it
> shouldn't be overwritten until it's sent, but that doesn't look quite good.
> 
> - for this particular patch, we can still allocate smaller short buffers
> for requests, so we should probably keep tsize to 0.
> rsize there really isn't much we can do without a protocol change
> though...

Good to know! I don't have any RDMA setup here to test, so I rely on what you 
say and adjust this in v6 accordingly, along with the strcmp -> flag change of 
course.

As this flag is going to be very RDMA-transport specific, I'm still scratching 
my head for a good name though.

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
