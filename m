Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4302AFBA1
	for <lists+v9fs-developer@lfdr.de>; Thu, 12 Nov 2020 00:23:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kczSI-00073m-EV; Wed, 11 Nov 2020 23:23:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <kkbfeqkdez@fjdigihfdg.xyz>) id 1kczSG-00073b-4P
 for v9fs-developer@lists.sourceforge.net; Wed, 11 Nov 2020 23:23:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Mime-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bGGgtwCJrusSg/fNs8UVyS4m6ErdN/TEovIgrjWM1Ss=; b=QfgKywdMnejvSeI+PuK2qc2jNC
 3xIYNdZSi0m3a574V6FaRt0bWg4q4N/ggQ47/gLd7Ptz2n+ikqSHFqva/YZT8gcW2g3zBdFdhb/sA
 Cgb2XecBjGySYFgSrHBYg6knhoUMUcXKHp2q3mHzECFmQtt4PaEQWX+RloxLkRytB4qQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Mime-Version:Date:Subject:To:From:Message-ID:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=bGGgtwCJrusSg/fNs8UVyS4m6ErdN/TEovIgrjWM1Ss=; b=H
 /++3Xs/O3lfPiGZAs9ct7AFWkvaxoGp8tZC2IHZHhAAxVPuFL4Eb37xJPJ5YPLYeURqJdskoVPRtd
 XhF5/77JcrVEOJzDQCL0VOakwdhZ0U6yKYHqZ219uTS/9eSS6uHSFqSxQlxwFGWe22RJELkDpixgB
 cetFWGxaMPuJjy98=;
Received: from 165084180109.ctinets.com ([165.84.180.109] helo=fjdigihfdg.xyz)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1kczRy-008U99-Gi
 for v9fs-developer@lists.sourceforge.net; Wed, 11 Nov 2020 23:23:07 +0000
Message-ID: <D2A50D9D3BD03BEC9514E91285950E7B@fjdigihfdg.xyz>
From: =?utf-8?B?5LiJ5LqV5L2P5Y+L44Kr44O844OJ?= <thankyou@vpass.ne.jp>
To: <v9fs-developer@lists.sourceforge.net>
Date: Thu, 12 Nov 2020 07:22:44 +0800
Mime-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.5512
X-MimeOLE: Produced By Microsoft MimeOLE V6.3.9600.19846
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1kczRy-008U99-Gi
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?44CQ6YeN6KaB44CR77yc5LiJ5LqV5L2P5Y+L?=
	=?utf-8?b?44Kr44O844OJ77ye44GU5Yip55So56K66KqN44Gu44GK6aGY44GE?=
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

DQogDQoNCg0K5pys44Oh44O844Or44Gv44OJ44Oh44Kk44Oz44Gu6YGL55So77yI44Oh44O844Or
6YCB5Y+X5L+h44KE44Ob44O844Og44Oa44O844K444Gu6KGo56S677yJ44Gr6Zai44KP44KLDQrp
h43opoHjgarpgJrnn6Xjgajjgarjgorjgb7jgZnjgIINCg0K44GE44Gk44KC5byK56S+44Kr44O8
44OJ44KS44GU5Yip55So44GE44Gf44Gg44GN44GC44KK44GM44Go44GG44GU44GW44GE44G+44GZ
44CCDQoNCg0K5pio5LuK44Gu56ys5LiJ6ICF5LiN5q2j5Yip55So44Gu5oCl5aKX44Gr5Ly044GE
44CB5byK56S+44Gn44Gv44CM5LiN5q2j5Yip55So55uj6KaW44K344K544OG44Og44CN44KS5bCO
5YWl44GX44CBMjTmmYLplpMzNjXml6XkvZPliLbjgafjgqvjg7zjg4njga7jgZTliKnnlKjjgavl
r77jgZnjgovjg6Ljg4vjgr/jg6rjg7PjgrDjgpLooYzjgaPjgabjgYrjgorjgb7jgZnjgIINCg0K
44GT44Gu44Gf44Gz44CB44GU5pys5Lq65qeY44Gu44GU5Yip55So44GL44Gp44GG44GL44KS56K6
6KqN44GV44Gb44Gm44GE44Gf44Gg44GN44Gf44GE44GK5Y+W5byV44GM44GC44KK44G+44GX44Gf
44Gu44Gn44CB6Kqg44Gr5Yud5omL44Gq44GM44KJ44CB44Kr44O844OJ44Gu44GU5Yip55So44KS
5LiA6YOo5Yi26ZmQ44GV44Gb44Gm44GE44Gf44Gg44GN44CB44GU6YCj57Wh44GV44Gb44Gm44GE
44Gf44Gg44GN44G+44GX44Gf44CCDQoNCg0K44Gk44GN44G+44GX44Gm44Gv44CB5Lul5LiL44G4
44Ki44Kv44K744K544Gu5LiK44CB44Kr44O844OJ44Gu44GU5Yip55So56K66KqN44Gr44GU5Y2U
5Yqb44KS44GK6aGY44GE6Ie044GX44G+44GZ44CCDQrjgZTlm57nrZTjgpLjgYTjgZ/jgaDjgZHj
garjgYTloLTlkIjjgIHjgqvjg7zjg4njga7jgZTliKnnlKjliLbpmZDjgYzntpnntprjgZXjgozj
govjgZPjgajjgoLjgZTjgZbjgYTjgb7jgZnjga7jgafjgIHkuojjgoHjgZTkuobmib/kuIvjgZXj
gYTjgIINCg0KDQrilqDjgZTliKnnlKjnorroqo3jga/jgZPjgaHjgonilqANCg0K44CAIA0KDQoN
CuiHs+aApeOAgVMgTSBCIEPjgqvjg7zjg4nkvJrlk6HjgrXjg7zjg5Pjgrnjgavmg4XloLHjgpLl
ho3nmbvpjLLjgZfjgabjgY/jgaDjgZXjgYQNCg0KDQrilqDnmbrooYzogIXilqANCuS4ieS6leS9
j+WPi+OCq+ODvOODieagquW8j+S8muekvg0K44CAaHR0cHM6Ly93d3cuc21iYy1jYXJkLmNvbS8N
CuOAkjEwNS04MDExIOadseS6rOmDvea4r+WMuua1t+WyuDHkuIHnm64y55WqMjDlj7cg5rGQ55WZ
44OT44Or44OH44Kj44Oz44KwDQoNCg0KDQoNCuOAgA0KQ29weXJpZ2h0IChDKSAyMDIwIFN1bWl0
b21vIE1pdHN1aSBDYXJkIENvLiwgTHRkLg0KIApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZl
bG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0
L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
