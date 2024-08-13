Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F7B9505E3
	for <lists+v9fs-developer@lfdr.de>; Tue, 13 Aug 2024 15:07:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1sdrFN-0004Na-1p;
	Tue, 13 Aug 2024 13:07:33 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <informationAEONv9fs-developer88dC@gilt.jp>)
 id 1sdrFM-0004NP-9N for v9fs-developer@lists.sourceforge.net;
 Tue, 13 Aug 2024 13:07:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-Unsubscribe:Subject:
 To:Date:Message-ID:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pcmwRbC425JcEqa4vc+Ma5oaXAPAHTxOxvxxa7JEpE8=; b=h6cRFbgj2nmNqLZz9YUxxSqmZ7
 Pm2NH4z5dPEcCR42OM+L2VYrXcisi6yIGDtVd9P/a7agAMziqg6IOK8Agl7jO6yDGczwF2Vd2deDW
 3iCYgxlJGWrOP0PZqLnLCTCsQGkNCRgCgjvufbSWZfkvbyGHEx62cG5iW7f+lEj1xsj4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-Unsubscribe:Subject:To:Date:Message-ID:
 From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pcmwRbC425JcEqa4vc+Ma5oaXAPAHTxOxvxxa7JEpE8=; b=ZSjT7yGV06fTs+lMwX7pz3+6+l
 Od4LgeQNUVCO6hZCO4tcpW+xXHMY1pZv1lUrgW1efLuEn37SL9zDhNznCEBixcktnKbE4hBr3rHDM
 DMDiWBLtKh0SAhA+k6Y0OOxtV+zwr9miy8D4UaNSONBJ+JIR/Im/eeekkFUlZsJrd2GU=;
Received: from [45.207.207.231] (helo=C20240810197547.local)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1sdrFL-0003sk-EU for v9fs-developer@lists.sourceforge.net;
 Tue, 13 Aug 2024 13:07:32 +0000
Received: from localhost (C20240810197547.local [IPv6:::1])
 by C20240810197547.local (Postfix) with ESMTP id DD07C6C4D85
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 13 Aug 2024 08:52:47 +0000 (UTC)
Mime-Version: 1.0
X-Originating-IP: [99.150.48.178]
Message-ID: <2024081354078558975414@mc307.repica.jp>
Date: Tue, 13 Aug 2024 17:52:47 +0900
To: v9fs-developer@lists.sourceforge.net
List-Unsubscribe-Post: List-Unsubscribe=One-Click
MIME-Version: 1.0
X-Helo-Check: bad, Forged Fake (C20240810197547.local)
X-Spam-Score: 5.0 (+++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  イオンカード重要なセキュリティ通知 再認証手続きについての重要なお知らせ
    拝啓　イオンカード会員様 
 
 Content analysis details:   (5.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.5 RCVD_IN_MSPIKE_L5      RBL: Very bad reputation (-5)
                             [45.207.207.231 listed in bl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [45.207.207.231 listed in list.dnswl.org]
  1.3 RCVD_IN_VALIDITY_RPBL  RBL: Relay in Validity RPBL,
                             https://senderscore.org/blocklistlookup/
                            [45.207.207.231 listed in bl.score.senderscore.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.9 SPF_FAIL               SPF: sender does not match SPF record (fail)
                             [SPF failed: Rejected by SPF record]
  1.1 DATE_IN_PAST_03_06     Date: is 3 to 6 hours before Received: date
  0.0 HTML_FONT_FACE_BAD     BODY: HTML font face is not a word
  0.0 HTML_MESSAGE           BODY: HTML included in message
  5.0 RCVD_IN_MSPIKE_BL      Mailspike blocklisted
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sdrFL-0003sk-EU
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?44Kk44Kq44Oz44Kr44O844OJ77ya57eK5oCl?=
 =?utf-8?b?44Gu44K744Kt44Ol44Oq44OG44Kj56K66KqN?=
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
From: =?UTF-8?q?=E3=82=A4=E3=82=AA=E3=83=B3=E3=83=95=E3=82=A3=E3=83=8A=E3=83=B3?=
 =?UTF-8?q?=E3=82=B7=E3=83=A3=E3=83=AB=E3=82=B5=E3=83=BC=E3=83=93=E3=82=B9?=
 =?UTF-8?q?=E6=A0=AA=E5=BC=8F=E4=BC=9A=E7=A4=BE?= via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: =?UTF-8?q?=E3=82=A4=E3=82=AA=E3=83=B3=E3=83=95=E3=82=A3=E3=83=8A=E3=83=B3?=
 =?UTF-8?q?=E3=82=B7=E3=83=A3=E3=83=AB=E3=82=B5=E3=83=BC=E3=83=93=E3=82=B9?=
 =?UTF-8?q?=E6=A0=AA=E5=BC=8F=E4=BC=9A=E7=A4=BE?=
 <informationAEONv9fs-developer88dC@gilt.jp>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CgoKICAgIAogICAgCiAgICDjgqTjgqrjg7Pjgqvjg7zjg4nph43opoHjgarjgrvjgq3jg6Xjg6rj
g4bjgqPpgJrnn6UKICAgIAoKCiAgICAKICAgICAgICAKICAgICAgICAgICAgCgoKCiAgICAgICAg
ICAgIAogICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAg
ICAgICAgICAgIOWGjeiqjeiovOaJi+e2muOBjeOBq+OBpOOBhOOBpuOBrumHjeimgeOBquOBiuef
peOCieOBmwoKCiAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAKICAgICAgICAg
ICAgCiAgICAgICAgCgoKICAgICAgICAKICAgICAgICAgICAg5oud5ZWT44CA44Kk44Kq44Oz44Kr
44O844OJ5Lya5ZOh5qeYCgoKICAgICAgICAgICAg44Kk44Kq44Oz44Kr44O844OJ44KS44GU5oSb
55So44GE44Gf44Gg44GN44CB44GC44KK44GM44Go44GG44GU44GW44GE44G+44GZ44CCCgoKICAg
ICAgICAgICAg5pyA6L+R44Gu6KqN6Ki85omL57aa44GN44GM5q2j5bi444Gr6KGM44KP44KM44Gm
44GE44Gq44GE44Gf44KB44CB44GK5a6i5qeY44Gu44Ki44Kr44Km44Oz44OI44GM5LiA5pmC55qE
44Gr5Yi26ZmQ44GV44KM44Gm44GE44G+44GZ44CC44GK5a6i5qeY44Gu44Ki44Kr44Km44Oz44OI
44KS5L+d6K2344GZ44KL44Gf44KB44CB5YaN5bqm44Gu6KqN6Ki844GM5b+F6KaB44Gn44GZ44CC
CgoKICAgICAgICAgICAgCgoKICAgICAgICAgICAg5YaN6KqN6Ki844Gu5omL57aa44GN5pa55rOV
77yaCgoKICAgICAgICAgICAgCiAgICAgICAgICAgICAgICDku6XkuIvjga7jgIzlho3oqo3oqLzp
lovlp4vjgI3jg5zjgr/jg7PjgpLjgq/jg6rjg4Pjgq/jgZfjgabjgIHoqo3oqLzjg5rjg7zjgrjj
gavjgqLjgq/jgrvjgrnjgZfjgabjgY/jgaDjgZXjgYTjgIIKICAgICAgICAgICAgICAgIOODreOC
sOOCpOODs+W+jOOAgeOBlOacrOS6uueiuuiqjeaDheWgseOCkuWGjeW6puWFpeWKm+OBl+OBpuOB
j+OBoOOBleOBhOOAggogICAgICAgICAgICAgICAg5pyA6L+R44Gu5Y+W5byV5bGl5q2044KS56K6
6KqN44GX44CB5LiN5a+p44Gq5Y+W5byV44GM44Gq44GE44GL44GU56K66KqN44GP44Gg44GV44GE
44CCCiAgICAgICAgICAgICAgICDjgrvjgq3jg6Xjg6rjg4bjgqPos6rllY/jgavjgZTlm57nrZTj
gYTjgZ/jgaDjgY3jgIHlho3oqo3oqLzjgpLlrozkuobjgZfjgabjgY/jgaDjgZXjgYTjgIIKICAg
ICAgICAgICAgCiAgICAgICAgICAgIOWGjeiqjeiovOmWi+WniwogICAgICAgICAgICAKICAgICAg
ICAgICAgICAgIOWGjeiqjeiovOOBrumam+OBr+OAgeaZruauteS9v+eUqOOBl+OBpuOBhOOCi+OC
ueODnuODvOODiOODleOCqeODs+OBqOODouODkOOCpOODq+ODh+ODvOOCv+mAmuS/oeOCkuWIqeeU
qOOBl+OAgVZQTuOChFdpLUZp44Gv5L2/55So44GX44Gq44GE44GT44Go44KS5o6o5aWo44GX44G+
44GZ44CC44GT44KM44Gr44KI44KK6KqN6Ki844Gu5a6J5YWo5oCn44GM6auY44G+44KK44G+44GZ
44CCCgoKICAgICAgICAgICAgICAgIOaJi+e2muOBjeOBjOWujOS6huOBmeOCi+OBvuOBp+OAgeOC
q+ODvOODieOBruWIqeeUqOOBjOWItumZkOOBleOCjOOCi+WgtOWQiOOBjOOBguOCiuOBvuOBmeOB
ruOBp+OAgeOBlOS6huaJv+OBiumhmOOBhOeUs+OBl+S4iuOBkuOBvuOBmeOAguOBlOWNlOWKm+OB
ruOBu+OBqeOCiOOCjeOBl+OBj+OBiumhmOOBhOOBhOOBn+OBl+OBvuOBmeOAggoKCiAgICAgICAg
ICAgIAogICAgICAgICAgICDjgoLjgZfjgZPjga7jg6Hjg7zjg6vjgavopprjgYjjgYzjgarjgYTl
oLTlkIjjgoTos6rllY/jgYzjgYLjgovloLTlkIjjga/jgIHku6XkuIvjgb7jgafjgZTpgKPntaHj
gY/jgaDjgZXjgYTvvJoKCgogICAgICAgICAgICAKICAgICAgICAgICAgICAgIO+8nOWbuuWumumb
u+ipseOBi+OCie+8ngrjg5Xjg6rjg7zjg4DjgqTjg6Tjg6vvvI/nhKHmlpkwMTIwLTIyMy0yMTIK
CgoKICAgICAgICAgICAgCiAgICAgICAgICAgICAgICDvvJzmkLrluK/pm7voqbHjg7vjgrnjg57j
g7zjg4jjg5Xjgqnjg7PjgYvjgonvvJ4K44OK44OT44OA44Kk44Ok44Or77yP5pyJ5paZMDU3MC0w
NjQtNzUwCgoKCiAgICAgICAgICAgIAogICAgICAgICAgICAgICAg5rW35aSW44GL44KJ44GvIDA0
My0zMzEtMDk5OQoKCgogICAgICAgIAoKCiAgICAgICAgCiAgICAgICAgICAgIAogICAgICAgICAg
ICAgICAg44Kk44Kq44Oz44Kv44Os44K444OD44OI44K144O844OT44K55qCq5byP5Lya56S+CuOA
kjEwMS0wMDU0IOadseS6rOmDveWNg+S7o+eUsOWMuuelnueUsOmMpueUuuS4ieS4geebrjIy55Wq
5Zyw44OG44Op44K544K544Kv44Ko44KiCiAgICAgICAgICAgIAoKCiAgICAgICAgICAgIAoKCgog
ICAgICAgICAgICAKICAgICAgICAgICAgICAgIEFFT04KQ0FSRAogICAgICAgICAgICAKCgogICAg
ICAgIAoKCiAgICAKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNv
dXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5m
by92OWZzLWRldmVsb3Blcgo=
