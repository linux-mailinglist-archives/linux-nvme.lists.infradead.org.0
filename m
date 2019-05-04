Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8C013879
	for <lists+linux-nvme@lfdr.de>; Sat,  4 May 2019 11:41:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wJNBjK0P1yRt8Ge5olyq3V/9kbnx+CVNLIDB7SOGoYc=; b=MGTjt3/U2f9TuqSUcjhV8mytr
	+BNMUs1Y5saCHBcTlsCTb2H8VtPesMxKQeWqGoa/tZwOzbZ1KcPhAvJD8RmpuOyZo3JJW72JwG3Fi
	KbbgBdLggWfAese3Sr55sNYgoqeRIUKGpSGivem2EvUG1jvTdWPg1zFnzuBMVdI70XL8m2Reec4p1
	Zjy7GUjWTTe3Z5eZPP19WC2JmoQSAvIwBbmpYQ/ny8vZlAqSV4e3YTLqIms+eVQgmTA2gUOxi8IoN
	xewQK4W1az37+LyLDy9Z+YOOLsli4c9YLCmhu8Jyl1vZGam5Cx7/W0zhIzuGRDrx9Re5hmV84iMZ/
	ftVOFqmWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMrA6-0003fW-1s; Sat, 04 May 2019 09:40:54 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMrA1-0003fA-OB
 for linux-nvme@lists.infradead.org; Sat, 04 May 2019 09:40:51 +0000
Received: by mail-pf1-x444.google.com with SMTP id 10so4155615pfo.5
 for <linux-nvme@lists.infradead.org>; Sat, 04 May 2019 02:40:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=2uilnzXCeksaulpRoxwMEHkC2mONo60sbbSMcDlkRbc=;
 b=KrcU8u/R5+edhHZWus3oEGQr3U5HmMRiF+s0XaCQpKTUzOudUZm+8fmwzxq/vtKe5j
 r1CJ+ky61UdMucl1a3CFb4+ZPll6DckwmfwAdYLIzXsVU/CtptLQOVYv1jIhF59wnMKo
 Xc0pslluFApTkiGG73MyaCiLGKWg8yVquKr28Y6SO0l8Uptjm88JjuLDvMsVgWXkwp1b
 9OiseK0S8TV5Kz1uZ9K6+6lqFOXJPAwoF75ESWwEn0xOZbPh+1SvybAi82v0UHyhkINu
 9gstlfhFcl0La6rq0euIUPFJOzSZMKenThg+wLFhfSAPtu0ix7CuYVhx2ynUginCyffn
 1afw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2uilnzXCeksaulpRoxwMEHkC2mONo60sbbSMcDlkRbc=;
 b=L7kEdqXd0PjpEwppfdH72e4naJtIPD5L4xeplQwdVu5sUYJLuJqLpT0orjzU3FYeEa
 Kzyi8wZLX8mWkDTbs/lLSxGae4NcC67cQh2sFvya5QIVXi87ydOjNVpWMf6WYNfOdtQ3
 1F87ythndrhav80LjKXD8N1CgNtHX2lWvRUV+H6zac2X4U4Yd37oMVR3MB11xDO24cCj
 m+vtlrHduHuB5q9EqqOv3m1aReFjR7RnLCroWmZVo/4/rrjhKPdmx6IsFCCEKHExSIpn
 C2lr3n/cpGdVyer9h0Onrhf/mnJyioZJeckoXG4ohPZQpdShuUb1Hc+YVGfeKO/ekKK2
 Ziog==
X-Gm-Message-State: APjAAAX006r3QfJYU6Z4U5qaYlaaN74X07PBbNY+NmmvSvDEqSUkVGcI
 JCL/BS2Tq+xOS90lZ5kD9hg=
X-Google-Smtp-Source: APXvYqyhNm3CXqv6xUdan58fg5cb7I4EmRxComV5otSP3kACJln0cPgj0XKfJGk+ZqNmoXBB/P3LPw==
X-Received: by 2002:a63:6604:: with SMTP id a4mr17595254pgc.104.1556962847986; 
 Sat, 04 May 2019 02:40:47 -0700 (PDT)
Received: from [192.168.0.6] ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id a6sm5909626pfn.181.2019.05.04.02.40.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 04 May 2019 02:40:46 -0700 (PDT)
Subject: Re: [PATCH 0/4] nvme-pci: support device coredump
To: Akinobu Mita <akinobu.mita@gmail.com>, Christoph Hellwig <hch@lst.de>
References: <1556787561-5113-1-git-send-email-akinobu.mita@gmail.com>
 <20190502125722.GA28470@localhost.localdomain>
 <CAC5umygdADGrYeJy=F53Mm4bNPHmo+WY4SD3HFSRqi_cLrz9jw@mail.gmail.com>
 <20190503121232.GB30013@localhost.localdomain>
 <20190503122035.GA21501@lst.de>
 <CAC5umyiGbDNCtzhJioR_2EV6-6xMuZXOMThCizwJEMHi+KqxAw@mail.gmail.com>
From: Minwoo Im <minwoo.im.dev@gmail.com>
Message-ID: <61bf6f0b-4087-cfb3-1ae6-539f18b5b6ea@gmail.com>
Date: Sat, 4 May 2019 18:40:42 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAC5umyiGbDNCtzhJioR_2EV6-6xMuZXOMThCizwJEMHi+KqxAw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_024049_819571_5FB3F223 
X-CRM114-Status: GOOD (  25.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 LKML <linux-kernel@vger.kernel.org>, linux-nvme@lists.infradead.org,
 Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 Johannes Berg <johannes@sipsolutions.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

SGkgQWtpbm9idSwKCk9uIDUvNC8xOSAxOjIwIFBNLCBBa2lub2J1IE1pdGEgd3JvdGU6Cj4gMjAx
OeW5tDXmnIgz5pelKOmHkSkgMjE6MjAgQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+Ogo+
Pgo+PiBPbiBGcmksIE1heSAwMywgMjAxOSBhdCAwNjoxMjozMkFNIC0wNjAwLCBLZWl0aCBCdXNj
aCB3cm90ZToKPj4+IENvdWxkIHlvdSBhY3R1YWxseSBleHBsYWluIGhvdyB0aGUgcmVzdCBpcyB1
c2VmdWw/IEkgcGVyc29uYWxseSBoYXZlCj4+PiBuZXZlciBlbmNvdW50ZXJlZCBhbiBpc3N1ZSB3
aGVyZSBrbm93aW5nIHRoZXNlIHZhbHVlcyB3b3VsZCBoYXZlIGhlbHBlZDoKPj4+IGV2ZXJ5IGRl
dmljZSB0aW1lb3V0IGFsd2F5cyBuZWVkZWQgZGV2aWNlIHNwZWNpZmljIGludGVybmFsIGZpcm13
YXJlCj4+PiBsb2dzIGluIG15IGV4cGVyaWVuY2UuCj4gCj4gSSBhZ3JlZSB0aGF0IHRoZSBkZXZp
Y2Ugc3BlY2lmaWMgaW50ZXJuYWwgbG9ncyBsaWtlIHRlbGVtZXRyeSBhcmUgdGhlIG1vc3QKPiB1
c2VmdWwuICBUaGUgbWVtb3J5IGR1bXAgb2YgY29tbWFuZCBxdWV1ZXMgYW5kIGNvbXBsZXRpb24g
cXVldWVzIGlzIG5vdAo+IHRoYXQgcG93ZXJmdWwgYnV0IGhlbHBzIHRvIGtub3cgd2hhdCBjb21t
YW5kcyBoYXZlIGJlZW4gc3VibWl0dGVkIGJlZm9yZQo+IHRoZSBjb250cm9sbGVyIGdvZXMgd3Jv
bmcgKElPVywgaXQncyBzb21ldGltZXMgbm90IGVub3VnaCB0byBrbm93Cj4gd2hpY2ggY29tbWFu
ZHMgYXJlIGFjdHVhbGx5IGZhaWxlZCksIGFuZCBpdCBjYW4gYmUgcGFyc2VkIHdpdGhvdXQgdmVu
ZG9yCj4gc3BlY2lmaWMga25vd2xlZGdlLgoKSSdtIG5vdCBwcmV0dHkgc3VyZSBJIGNhbiBzYXkg
dGhhdCBtZW1vcnkgZHVtcCBvZiBxdWV1ZXMgYXJlIHVzZWxlc3MgYXQgYWxsLgoKQXMgeW91IG1l
bnRpb25lZCwgc29tZXRpbWVzIGl0J3Mgbm90IGVub3VnaCB0byBrbm93IHdoaWNoIGNvbW1hbmQg
aGFzCmFjdHVhbGx5IGJlZW4gZmFpbGVkIGJlY2F1c2Ugd2UgbWlnaHQgd2FudCB0byBrbm93IHdo
YXQgaGFwcGVuZWQgYmVmb3JlIGFuZAphZnRlciB0aGUgYWN0dWFsIGZhaWx1cmUuCgpCdXQsIHRo
ZSBpbmZvcm1hdGlvbiBvZiBjb21tYW5kcyBoYW5kbGVkIGZyb20gZGV2aWNlIGluc2lkZSB3b3Vs
ZCBiZSBtdWNoCm1vcmUgdXNlZnVsIHRvIGZpZ3VyZSBvdXQgd2hhdCBoYXBwZW5lZCBiZWNhdXNl
IGluIGNhc2Ugb2YgbXVsdGlwbGUgcXVldWVzLAp0aGUgYXJiaXRyYXRpb24gYW1vbmcgdGhlbSBj
b3VsZCBub3QgYmUgcmVwcmVzZW50ZWQgYnkgdGhpcyBtZW1vcnkgZHVtcC4KCj4gCj4gSWYgdGhl
IGlzc3VlIGlzIHJlcHJvZHVjaWJsZSwgdGhlIG52bWUgdHJhY2UgaXMgdGhlIG1vc3QgcG93ZXJm
dWwgZm9yIHRoaXMKPiBraW5kIG9mIGluZm9ybWF0aW9uLiAgVGhlIG1lbW9yeSBkdW1wIG9mIHRo
ZSBxdWV1ZXMgaXMgbm90IHRoYXQgcG93ZXJmdWwsCj4gYnV0IGl0IGNhbiBhbHdheXMgYmUgZW5h
YmxlZCBieSBkZWZhdWx0LgoKSWYgdGhlIG1lbW9yeSBkdW1wIGlzIGEga2V5IHRvIHJlcHJvZHVj
ZSBzb21lIGlzc3VlcywgdGhlbiBpdCB3aWxsIGJlIApwb3dlcmZ1bAp0byBoYW5kIGl0IHRvIGEg
dmVuZG9yIHRvIHNvbHZlIGl0LiAgQnV0IEknbSBhZnJhaWQgb2YgaXQgYmVjYXVzZSB0aGUgCmR1
bXAgbWlnaHQKbm90IGJlIGFibGUgdG8gZ2l2ZSByZWxhdGl2ZSBzdWJtaXR0ZWQgdGltZXMgYW1v
bmcgdGhlIGNvbW1hbmRzIGluIHF1ZXVlcy4KCj4gCj4+IFllcy4gIEFsc28gbm90IHRoYXQgTlZN
ZSBub3cgaGFzIHRoZSAnZGV2aWNlIGluaXRpYXRlZCB0ZWxlbWV0cnknCj4+IGZlYXV0dXJlLCB3
aGljaCBpcyBqdXN0IGEgd2lyZWQgbmFtZSBmb3IgZGV2aWNlIGNvcmVkdW1wLiAgV2lyaW5nIHRo
YXQKPj4gdXAgc28gdGhhdCB3ZSBjYW4gZWFzaWx5IHByb3ZpZGUgdGhhdCBkYXRhIHRvIHRoZSBk
ZXZpY2UgdmVuZG9yIHdvdWxkCj4+IGFjdHVhbGx5IGJlIHByZXR0eSB1c2VmdWwuCj4gCj4gVGhp
cyB2ZXJzaW9uIG9mIG52bWUgY29yZWR1bXAgY2FwdHVyZXMgY29udHJvbGxlciByZWdpc3RlcnMg
YW5kIGVhY2ggcXVldWUuCj4gU28gYmVmb3JlIHJlc2V0dGluZyBjb250cm9sbGVyIGlzIGEgc3Vp
dGFibGUgdGltZSB0byBjYXB0dXJlIHRoZXNlLgo+IElmIHdlJ2xsIGNhcHR1cmUgb3RoZXIgbG9n
IHBhZ2VzIGluIHRoaXMgbWVjaGFuaXNtLCB0aGUgY29yZWR1bXAgcHJvY2VkdXJlCj4gd2lsbCBi
ZSBzcGxpdHRlZCBpbnRvIHR3byBwaGFzZXMgKGJlZm9yZSByZXNldHRpbmcgY29udHJvbGxlciBh
bmQgYWZ0ZXIKPiByZXNldHRpbmcgYXMgc29vbiBhcyBhZG1pbiBxdWV1ZSBpcyBhdmFpbGFibGUp
LgoKSSBhZ3JlZSB3aXRoIHRoYXQgaXQgd291bGQgYmUgbmljZSBpZiB3ZSBoYXZlIGEgaW5mb3Jt
YXRpb24gdGhhdCBtaWdodCBub3QKYmUgdGhhdCBwb3dlcmZ1bCByYXRoZXIgdGhhbiBub3RoaW5n
LgoKQnV0LCBjb3VsZCB3ZSByZXF1ZXN0IGNvbnRyb2xsZXItaW5pdGlhdGVkIHRlbGVtZXRyeSBs
b2cgcGFnZSBpZiAKc3VwcG9ydGVkIGJ5CnRoZSBjb250cm9sbGVyIHRvIGdldCB0aGUgaW50ZXJu
YWwgaW5mb3JtYXRpb24gYXQgdGhlIHBvaW50IG9mIGZhaWx1cmUgCmxpa2UgcmVzZXQ/CklmIHRo
ZSBkdW1wIGlzIGdlbmVyYXRlZCB3aXRoIHRoZSB0ZWxlbWV0cnkgbG9nIHBhZ2UsIEkgdGhpbmsg
aXQgd291bGQgCmJlIGdyZWF0CnRvIGJlIGEgY2x1ZSB0byBzb2x2ZSB0aGUgaXNzdWUuCgpUaGFu
a3MsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
