Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BCBF1FB5E8
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jun 2020 17:20:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uohEFD1By91T7s6RO7NFGEotxZM/HfGvBjU/SLfyJH8=; b=NV7CiRZSIfbD8FzdT3H28zWX8
	OeL3+N5K5IUdOd6Napg6gqitPOnb7zSnf8OG9aFCpe40ctMnw83BsZAWukkWtjwI9X9FmWsDDAdaY
	/jqbqo7N1klRpbhOgEzJNg4AlP9HredF2uvmLLAEMx4zovnWtwvr9e8l0tIfCGcUD5tw+xj/K4v1F
	r1zm2oOcL7mTP1uUrNhzfmtGL5zGXvwrxK6xp9nl6WFzaNYNgoGYO9Cu42cowx2Vnt7mOze9wLxX9
	VbupS2szmQrY8zNRjm//ncRHQkZFrQ8N562rFOgNtUW9BAQ+foSPUfnoQcTA0Ht9lz9jNaNWpEJDM
	a4XG9XSWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlDNn-0001zs-G7; Tue, 16 Jun 2020 15:20:15 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlDNh-0000Ac-9P
 for linux-nvme@lists.infradead.org; Tue, 16 Jun 2020 15:20:11 +0000
Received: by mail-wm1-x341.google.com with SMTP id l17so3273251wmj.0
 for <linux-nvme@lists.infradead.org>; Tue, 16 Jun 2020 08:20:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lightnvm-io.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=fo+YSJFyJJ9br1vhXA8Kisr4HBsMJy74FKkD0y0sozQ=;
 b=DLnD06e3jT1dyih8FzaKmP6Skn4oKHm61bDWNRKmftSMX6+2p8NZj2HKV1MbcniAsQ
 FFHBx6IMbQ0ym9rQZ8TCUeUq9mC9tQlN5HXDYOKukAAktAHpjct1knVjmsVMEouFnCg+
 WsxuWuC4rm9Lbt5x/qcagwZZm0d2juLtsAUqXkFDXiNNVaQU1LG67foYKDLVNZVjF3SL
 DpvtCoCy5Es4zcVE7UTKy9Hvc2J82nRDO2fUKDu5CBViSUVLoMVxEsk2VYTQRtXc/2A4
 idTPk6uZeu22eSWj/+k1fNqPkQK0syc2HiDsbvSpTXVacnUOMfJE+2hAbqh+m+CsRswY
 peLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=fo+YSJFyJJ9br1vhXA8Kisr4HBsMJy74FKkD0y0sozQ=;
 b=oRZ5UxRvPw2jEMhhzyaunBAVPQWbYpBU9J7SNyBgcyklY12sVswSRr4ybMPPLMogb4
 I6DVag+Ut2vgQaGZetm7wlSGQ6am3CilvixIGbbnJCs3N1pelKKGI90ZKLdPoW/IiOnn
 mKbs9TEHMXHdqSwz3WOisQkleBkRZyGDNyXeXFF+MmXJVvEnGrP6vuuiFTTf19HOefdk
 pFL7m00fysMPeHyXxUcx1vtvldW1PXgMVzaD+x/SSWoX1Rv8kHunDD3koMdw+nSSu7mz
 la9SefLmK/B+7IwI/thQGPb7HUzZnEOu/ZA4HY1Ena2aRntzS/mapmaPJ+4a2Cwg+H89
 sPiw==
X-Gm-Message-State: AOAM530rdpZ+0zTPBSES4ryCX/RWgsgK7eBicXXLHrzEQe0xtQXrwRil
 2FG6PT28KmVBYQQpuB9JQMETDQ==
X-Google-Smtp-Source: ABdhPJxQbkqck5C9G5Vr7Oz8uoK5wTPKbjCgrnYfPCB6LaeEOG0u72NPpsV5U2L+gX4nOCCEl1si6Q==
X-Received: by 2002:a1c:f301:: with SMTP id q1mr3787193wmq.110.1592320804191; 
 Tue, 16 Jun 2020 08:20:04 -0700 (PDT)
Received: from [10.0.0.6] (xb932c246.cust.hiper.dk. [185.50.194.70])
 by smtp.gmail.com with ESMTPSA id d2sm30123426wrs.95.2020.06.16.08.20.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 16 Jun 2020 08:20:03 -0700 (PDT)
Subject: Re: [PATCH 5/5] nvme: support for zoned namespaces
To: =?UTF-8?Q?Javier_Gonz=c3=a1lez?= <javier@javigon.com>,
 Damien Le Moal <Damien.LeMoal@wdc.com>
References: <20200615233424.13458-1-keith.busch@wdc.com>
 <20200615233424.13458-6-keith.busch@wdc.com>
 <20200616104142.zxw25txhsg2eyhsb@mpHalley.local>
 <d433450a-6e18-217c-d133-ea367d8936be@lightnvm.io>
 <20200616120018.en337lcs5y2jh5ne@mpHalley.local>
 <cf899cd9-c3de-7436-84d4-744c0988a6c9@lightnvm.io>
 <20200616122448.4e3slfghv4cojafq@mpHalley.local>
 <CY4PR04MB3751CC8FE4BDFC256F9E9CD1E79D0@CY4PR04MB3751.namprd04.prod.outlook.com>
 <20200616141620.omqf64up523of35t@MacBook-Pro.localdomain>
 <CY4PR04MB37512BCDD74996057697F5CAE79D0@CY4PR04MB3751.namprd04.prod.outlook.com>
 <20200616150217.inezhntsehtcbjsw@MacBook-Pro.localdomain>
From: =?UTF-8?Q?Matias_Bj=c3=b8rling?= <mb@lightnvm.io>
Message-ID: <506571d0-52f4-de88-9438-878618ff738d@lightnvm.io>
Date: Tue, 16 Jun 2020 17:20:03 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200616150217.inezhntsehtcbjsw@MacBook-Pro.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_082009_412543_1BFA68BB 
X-CRM114-Status: GOOD (  29.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Jens Axboe <axboe@kernel.dk>, Niklas Cassel <Niklas.Cassel@wdc.com>,
 Ajay Joshi <Ajay.Joshi@wdc.com>, Sagi Grimberg <sagi@grimberg.me>,
 Keith Busch <Keith.Busch@wdc.com>, Dmitry Fomichev <Dmitry.Fomichev@wdc.com>,
 Aravind Ramesh <Aravind.Ramesh@wdc.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 Hans Holmberg <Hans.Holmberg@wdc.com>, Christoph Hellwig <hch@lst.de>,
 Matias Bjorling <Matias.Bjorling@wdc.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gMTYvMDYvMjAyMCAxNy4wMiwgSmF2aWVyIEdvbnrDoWxleiB3cm90ZToKPiBPbiAxNi4wNi4y
MDIwIDE0OjQyLCBEYW1pZW4gTGUgTW9hbCB3cm90ZToKPj4gT24gMjAyMC8wNi8xNiAyMzoxNiwg
SmF2aWVyIEdvbnrDoWxleiB3cm90ZToKPj4+IE9uIDE2LjA2LjIwMjAgMTI6MzUsIERhbWllbiBM
ZSBNb2FsIHdyb3RlOgo+Pj4+IE9uIDIwMjAvMDYvMTYgMjE6MjQsIEphdmllciBHb256w6FsZXog
d3JvdGU6Cj4+Pj4+IE9uIDE2LjA2LjIwMjAgMTQ6MDYsIE1hdGlhcyBCasO4cmxpbmcgd3JvdGU6
Cj4+Pj4+PiBPbiAxNi8wNi8yMDIwIDE0LjAwLCBKYXZpZXIgR29uesOhbGV6IHdyb3RlOgo+Pj4+
Pj4+IE9uIDE2LjA2LjIwMjAgMTM6MTgsIE1hdGlhcyBCasO4cmxpbmcgd3JvdGU6Cj4+Pj4+Pj4+
IE9uIDE2LzA2LzIwMjAgMTIuNDEsIEphdmllciBHb256w6FsZXogd3JvdGU6Cj4+Pj4+Pj4+PiBP
biAxNi4wNi4yMDIwIDA4OjM0LCBLZWl0aCBCdXNjaCB3cm90ZToKPj4+Pj4+Pj4+PiBBZGQgc3Vw
cG9ydCBmb3IgTlZNIEV4cHJlc3MgWm9uZWQgTmFtZXNwYWNlcyAoWk5TKSBDb21tYW5kIAo+Pj4+
Pj4+Pj4+IFNldCBkZWZpbmVkCj4+Pj4+Pj4+Pj4gaW4gTlZNIEV4cHJlc3MgVFA0MDUzLiBab25l
ZCBuYW1lc3BhY2VzIGFyZSBkaXNjb3ZlcmVkIGJhc2VkIAo+Pj4+Pj4+Pj4+IG9uIHRoZWlyCj4+
Pj4+Pj4+Pj4gQ29tbWFuZCBTZXQgSWRlbnRpZmllciByZXBvcnRlZCBpbiB0aGUgbmFtZXNwYWNl
cyBOYW1lc3BhY2UKPj4+Pj4+Pj4+PiBJZGVudGlmaWNhdGlvbiBEZXNjcmlwdG9yIGxpc3QuIEEg
c3VjY2Vzc2Z1bGx5IGRpc2NvdmVyZWQgWm9uZWQKPj4+Pj4+Pj4+PiBOYW1lc3BhY2Ugd2lsbCBi
ZSByZWdpc3RlcmVkIHdpdGggdGhlIGJsb2NrIGxheWVyIGFzIGEgaG9zdCAKPj4+Pj4+Pj4+PiBt
YW5hZ2VkCj4+Pj4+Pj4+Pj4gem9uZWQgYmxvY2sgZGV2aWNlIHdpdGggWm9uZSBBcHBlbmQgY29t
bWFuZCBzdXBwb3J0LiBBIAo+Pj4+Pj4+Pj4+IG5hbWVzcGFjZSB0aGF0Cj4+Pj4+Pj4+Pj4gZG9l
cyBub3Qgc3VwcG9ydCBhcHBlbmQgaXMgbm90IHN1cHBvcnRlZCBieSB0aGUgZHJpdmVyLgo+Pj4+
Pj4+Pj4KPj4+Pj4+Pj4+IFdoeSBhcmUgd2UgZW5mb3JjaW5nIHRoZSBhcHBlbmQgY29tbWFuZD8g
QXBwZW5kIGlzIG9wdGlvbmFsIG9uIAo+Pj4+Pj4+Pj4gdGhlCj4+Pj4+Pj4+PiBjdXJyZW50IFpO
UyBzcGVjaWZpY2F0aW9uLCBzbyB3ZSBzaG91bGQgbm90IG1ha2UgdGhpcyAKPj4+Pj4+Pj4+IG1h
bmRhdG9yeSBpbiB0aGUKPj4+Pj4+Pj4+IGltcGxlbWVudGF0aW9uLiBTZWUgc3BlY2lmaWNzIGJl
bG93Lgo+Pj4+Pj4+Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+IFRoZXJlIGlzIGFscmVhZHkgZ2VuZXJhbCBz
dXBwb3J0IGluIHRoZSBrZXJuZWwgZm9yIHRoZSB6b25lIGFwcGVuZAo+Pj4+Pj4+PiBjb21tYW5k
LiBGZWVsIGZyZWUgdG8gc3VibWl0IHBhdGNoZXMgdG8gZW11bGF0ZSB0aGUgc3VwcG9ydC4gSXQg
aXMKPj4+Pj4+Pj4gb3V0c2lkZSB0aGUgc2NvcGUgb2YgdGhpcyBwYXRjaHNldC4KPj4+Pj4+Pj4K
Pj4+Pj4+Pgo+Pj4+Pj4+IEl0IGlzIGZpbmUgdGhhdCB0aGUga2VybmVsIHN1cHBvcnRzIGFwcGVu
ZCwgYnV0IHRoZSBaTlMgCj4+Pj4+Pj4gc3BlY2lmaWNhdGlvbgo+Pj4+Pj4+IGRvZXMgbm90IGlt
cG9zZSB0aGUgaW1wbGVtZW50YXRpb24gZm9yIGFwcGVuZCwgc28gdGhlIGRyaXZlciAKPj4+Pj4+
PiBzaG91bGQgbm90Cj4+Pj4+Pj4gZG8gdGhhdCBlaXRoZXIuCj4+Pj4+Pj4KPj4+Pj4+PiBaTlMg
U1NEcyB0aGF0IGNob29zZSB0byBsZWF2ZSBhcHBlbmQgYXMgYSBub24taW1wbGVtZW50ZWQgb3B0
aW9uYWwKPj4+Pj4+PiBjb21tYW5kIHNob3VsZCBub3QgcmVseSBvbiBlbXVsYXRlZCBTVyBzdXBw
b3J0LCBzcGVjaWFsbHkgd2hlbgo+Pj4+Pj4+IHRyYWRpdGlvbmFsIHdyaXRlcyB3b3JrIHZlcnkg
ZmluZSBmb3IgYSBsYXJnZSBwYXJ0IG9mIGN1cnJlbnQgCj4+Pj4+Pj4gWk5TIHVzZQo+Pj4+Pj4+
IGNhc2VzLgo+Pj4+Pj4+Cj4+Pj4+Pj4gUGxlYXNlLCByZW1vdmUgdGhpcyB2aXJ0dWFsIGNvbnN0
cmFpbnQuCj4+Pj4+Pgo+Pj4+Pj4gVGhlIFpvbmUgQXBwZW5kIGNvbW1hbmQgaXMgbWFuZGF0b3J5
IGZvciB6b25lZCBibG9jayBkZXZpY2VzLiBQbGVhc2UKPj4+Pj4+IHNlZSBodHRwczovL2x3bi5u
ZXQvQXJ0aWNsZXMvODE4NzA5LyBmb3IgdGhlIGJhY2tncm91bmQuCj4+Pj4+Cj4+Pj4+IEkgZG8g
bm90IHNlZSBhbnl3aGVyZSBpbiB0aGUgYmxvY2sgbGF5ZXIgdGhhdCBhcHBlbmQgaXMgbWFuZGF0
b3J5IGZvcgo+Pj4+PiB6b25lZCBkZXZpY2VzLiBBcHBlbmQgaXMgZW11bGF0ZWQgb24gWkJDLCBi
dXQgYmV5b25kIHRoYXQgdGhlcmUgaXMgbm8KPj4+Pj4gbWFuZGF0b3J5IGJpdHMuIFBsZWFzZSBl
eHBsYWluLgo+Pj4+Cj4+Pj4gVGhpcyBpcyB0byBhbGxvdyBhIHNpbmdsZSB3cml0ZSBJTyBwYXRo
IGZvciBhbGwgdHlwZXMgb2Ygem9uZWQgCj4+Pj4gYmxvY2sgZGV2aWNlIGZvcgo+Pj4+IGhpZ2hl
ciBsYXllcnMsIGUuZyBmaWxlIHN5c3RlbXMuIFRoZSBvbi1nb2luZyByZS13b3JrIG9mIGJ0cmZz
IHpvbmUgCj4+Pj4gc3VwcG9ydCBmb3IKPj4+PiBpbnN0YW5jZSBub3cgcmVsaWVzIDEwMCUgb24g
em9uZSBhcHBlbmQgYmVpbmcgc3VwcG9ydGVkLiBUaGF0IAo+Pj4+IHNpZ25pZmljYW50bHkKPj4+
PiBzaW1wbGlmaWVzIHRoZSBmaWxlIHN5c3RlbSBzdXBwb3J0IGFuZCBtb3JlIGltcG9ydGFudGx5
IHJlbW92ZSB0aGUgCj4+Pj4gbmVlZCBmb3IKPj4+PiBsb2NraW5nIGFyb3VuZCBibG9jayBhbGxv
Y2F0aW9uIGFuZCBCSU8gaXNzdWluZywgYWxsb3dpbmcgdG8gCj4+Pj4gcHJlc2VydmUgYSBmdWxs
eQo+Pj4+IGFzeW5jaHJvbm91cyB3cml0ZSBwYXRoIHRoYXQgY2FuIGluY2x1ZGUgd29ya3F1ZXVl
cyBmb3IgZWZmaWNpZW50IAo+Pj4+IENQVSB1c2FnZSBvZgo+Pj4+IHRoaW5ncyBsaWtlIGVuY3J5
cHRpb24gYW5kIGNvbXByZXNzaW9uLiBXaXRob3V0IHpvbmUgYXBwZW5kLCBmaWxlIAo+Pj4+IHN5
c3RlbSB3b3VsZAo+Pj4+IGVpdGhlciAoMSkgaGF2ZSB0byByZWplY3QgdGhlc2UgZHJpdmVzIHRo
YXQgZG8gbm90IHN1cHBvcnQgem9uZSAKPj4+PiBhcHBlbmQsIG9yICgyKQo+Pj4+IGltcGxlbWVu
dCAyIGRpZmZlcmVudCB3cml0ZSBJTyBwYXRoIChzbG93ZXIgcmVndWxhciB3cml0ZSBhbmQgem9u
ZSAKPj4+PiBhcHBlbmQpLiBOb25lCj4+Pj4gb2YgdGhlc2Ugb3B0aW9ucyBhcmUgaWRlYWwsIHRv
IHNheSB0aGUgbGVhc3QuCj4+Pj4KPj4+PiBTbyB0aGUgYXBwcm9hY2ggaXM6IG1hbmRhdGUgem9u
ZSBhcHBlbmQgc3VwcG9ydCBmb3IgWk5TIGRldmljZXMuIFRvIAo+Pj4+IGFsbG93IG90aGVyCj4+
Pj4gWk5TIGRyaXZlcywgYW4gZW11bGF0aW9uIHNpbWlsYXIgdG8gU0NTSSBjYW4gYmUgaW1wbGVt
ZW50ZWQsIHdpdGggCj4+Pj4gdGhhdCBlbXVsYXRpb24KPj4+PiBpZGVhbGx5IGNvbWJpbmVkIHRv
IHdvcmsgZm9yIGJvdGggdHlwZXMgb2YgZHJpdmVzIGlmIHBvc3NpYmxlLgo+Pj4KPj4+IEVuZm9y
Y2luZyBRRD0xIGJlY29tZXMgYSBwcm9ibGVtIG9uIGRldmljZXMgd2l0aCBsYXJnZSB6b25lcy4g
SW4KPj4+IGEgWk5TIGRldmljZSB0aGF0IGhhcyBzbWFsbGVyIHpvbmVzIHRoaXMgc2hvdWxkIG5v
dCBiZSBhIHByb2JsZW0uCj4+Cj4+IExldCdzIGJlIHByZWNpc2U6IHRoaXMgaXMgbm90IHJ1bm5p
bmcgdGhlIGRyaXZlIGF0IFFEPTEsIGl0IGlzICJhdCAKPj4gbW9zdCBvbmUKPj4gd3JpdGUgKnJl
cXVlc3QqIHBlciB6b25lIi4gSWYgdGhlIEZTIGlzIHNpbXVsdGFuZW91c2x5IHVzaW5nIG11bHRp
cGxlIAo+PiBibG9jawo+PiBncm91cHMgbWFwcGVkIHRvIGRpZmZlcmVudCB6b25lcywgeW91IHdp
bGwgZ2V0IGEgdG90YWwgd3JpdGUgUUQgPiAxLCAKPj4gYW5kIGFzIG1hbnkKPj4gcmVhZHMgYXMg
eW91IHdhbnQuCj4+Cj4+PiBXb3VsZCB5b3UgYWdyZWUgdGhhdCBpdCBpcyBwb3NzaWJsZSB0byBo
YXZlIGEgd3JpdGUgcGF0aCB0aGF0IHJlbGllcyBvbgo+Pj4gUUQ9MSwgd2hlcmUgdGhlIEZTIC8g
YXBwbGljYXRpb24gaGFzIHRoZSByZXNwb25zaWJpbGl0eSBmb3IgZW5mb3JjaW5nCj4+PiB0aGlz
PyBEb3duIHRoZSByb2FkIHRoaXMgUUQgY2FuIGJlIGluY3JlYXNlZCBpZiB0aGUgZGV2aWNlIGlz
IGFibGUgdG8KPj4+IGJ1ZmZlciB0aGUgd3JpdGVzLgo+Pgo+PiBEb2luZyBRRD0xIHBlciB6b25l
IGZvciB3cml0ZXMgYXQgdGhlIEZTIGxheWVyLCB0aGF0IGlzLCBhdCB0aGUgQklPIAo+PiBsYXll
ciBkb2VzCj4+IG5vdCB3b3JrLiBUaGlzIGlzIGJlY2F1c2UgQklPcyBjYW4gYmUgYXMgbGFyZ2Ug
YXMgdGhlIEZTIHdhbnRzIHRoZW0gCj4+IHRvIGJlLiBTdWNoCj4+IGxhcmdlIEJJTyB3aWxsIGJl
IHNwbGl0IGludG8gbXVsdGlwbGUgcmVxdWVzdHMgaW4gdGhlIGJsb2NrIGxheWVyLCAKPj4gcmVz
dWx0aW5nIGluCj4+IG1vcmUgdGhhbiBvbmUgd3JpdGUgcGVyIHpvbmUuIFRoYXQgaXMgd2h5IHRo
ZSB6b25lIHdyaXRlIGxvY2tpbmcgaXMgCj4+IGF0IHRoZQo+PiBzY2hlZHVsZXIgbGV2ZWwsIGJl
dHdlZW4gQklPIHNwbGl0IGFuZCByZXF1ZXN0IGRpc3BhdGNoLiBUaGF0IGF2b2lkcyB0aGUKPj4g
bXVsdGlwbGUgcmVxdWVzdHMgZnJhZ21lbnRzIG9mIGEgbGFyZ2UgQklPIHRvIGJlIHJlb3JkZXJl
ZCBhbmQgZmFpbC4gCj4+IFRoYXQgaXMKPj4gbWFuZGF0b3J5IGFzIHRoZSBibG9jayBsYXllciBp
dHNlbGYgY2FuIG9jY2FzaW9uYWxseSByZW9yZGVyIHJlcXVlc3RzIAo+PiBhbmQgbG93ZXIKPj4g
bGV2ZWxzIHN1Y2ggYXMgQUhDSSBIVyBpcyBhbHNvIG5vdG9yaW91c2x5IGdvb2QgYXQgcmV2ZXJz
aW5nIHNlcXVlbnRpYWwKPj4gcmVxdWVzdHMuIEZvciBOVk1lIHdpdGggbXVsdGktcXVldWUsIHRo
ZSBJTyBpc3N1aW5nIHByb2Nlc3MgZ2V0dGluZyAKPj4gcmVzY2hlZHVsZWQKPj4gb24gYSBkaWZm
ZXJlbnQgQ1BVIGNhbiByZXN1bHQgaW4gc2VxdWVudGlhbCBJT3MgYmVpbmcgaW4gZGlmZmVyZW50
IAo+PiBxdWV1ZXMsIHdpdGgKPj4gdGhlIGxpa2VseSByZXN1bHQgb2YgYW4gb3V0LW9mLW9yZGVy
IGV4ZWN1dGlvbi4gQWxsIGNhc2VzIGFyZSBhdm9pZGVkIAo+PiB3aXRoIHpvbmUKPj4gd3JpdGUg
bG9ja2luZyBhbmQgYXQgbW9zdCBvbmUgd3JpdGUgcmVxdWVzdCBkaXNwYXRjaCBwZXIgem9uZSBh
cyAKPj4gcmVjb21tZW5kZWQgYnkKPj4gdGhlIFpOUyBzcGVjaWZpY2F0aW9ucyAoWkJDIGFuZCBa
QUMgc3RhbmRhcmRzIGZvciBTTVIgSEREcyBhcmUgc2lsZW50IAo+PiBvbiB0aGlzKS4KPj4KPgo+
IEkgdW5kZXJzdGFuZC4gSSBhZ3JlZSB0aGF0IHRoZSBjdXJyZW50IEZTcyBzdXBwb3J0aW5nIFpO
UyBmb2xsb3cgdGhpcwo+IGFwcHJvYWNoIGFuZCBpdCBtYWtlcyBzZW5zZSB0aGF0IHRoZXJlIGlz
IGEgY29tbW9uIGludGVyZmFjZSB0aGF0Cj4gc2ltcGxpZmllcyB0aGUgRlMgaW1wbGVtZW50YXRp
b24uIFNlZSB0aGUgY29tbWVudCBiZWxvdyBvbiB0aGUgcGFydCBJCj4gYmVsaWV2ZSB3ZSBzZWUg
dGhpbmdzIGRpZmZlcmVudGx5Lgo+Cj4KPj4+IEkgd291bGQgYmUgT0sgd2l0aCBzb21lIEZTIGlt
cGxlbWVudGF0aW9ucyB0byByZWx5IG9uIGFwcGVuZCBhbmQgaW1wb3NlCj4+PiB0aGUgY29uc3Ry
YWludCB0aGF0IGFwcGVuZCBoYXMgdG8gYmUgc3VwcG9ydGVkIChhbmQgaXQgd291bGQgYmUgb3Vy
IGpvYgo+Pj4gdG8gY2hhbmdlIHRoYXQpLCBidXQgSSB3b3VsZCBsaWtlIHRvIGF2b2lkIHRoZSBk
cml2ZXIgcmVqZWN0aW5nCj4+PiBpbml0aWFsaXppbmcgdGhlIGRldmljZSBiZWNhdXNlIGN1cnJl
bnQgRlMgaW1wbGVtZW50YXRpb25zIGhhdmUKPj4+IGltcGxlbWVudGVkIHRoaXMgbG9naWMuCj4+
Cj4+IFdoYXQgaXMgdGhlIGRpZmZlcmVuY2UgYmV0d2VlbiB0aGUgZHJpdmVyIHJlamVjdGluZyBk
cml2ZXMgYW5kIHRoZSBGUyAKPj4gcmVqZWN0aW5nCj4+IHRoZSBzYW1lIGRyaXZlcyA/IFRoYXQg
aGFzIHRoZSBzYW1lIGVuZCByZXN1bHQgdG8gbWU6IGFuIGVudGlyZSBjbGFzcyAKPj4gb2YgZGV2
aWNlcwo+PiBjYW5ub3QgYmUgdXNlZCBhcyBkZXNpcmVkIGJ5IHRoZSB1c2VyLiBJbXBsZW1lbnRp
bmcgem9uZSBhcHBlbmQgCj4+IGVtdWxhdGlvbiBhdm9pZHMKPj4gdGhlIHJlamVjdGlvbiBlbnRp
cmVseSB3aGlsZSBzdGlsbCBhbGxvd2luZyB0aGUgRlMgdG8gaGF2ZSBhIHNpbmdsZSAKPj4gd3Jp
dGUgSU8KPj4gcGF0aCwgdGh1cyBzaW1wbGlmeWluZyB0aGUgY29kZS4KPgo+IFRoZSBkaWZmZXJl
bmNlIGlzIHRoYXQgdXNlcnMgdGhhdCB1c2UgYSByYXcgWk5TIGRldmljZSBzdWJtaXR0aW5nIEkv
Two+IHRocm91Z2ggdGhlIGtlcm5lbCB3b3VsZCBzdGlsbCBiZSBhYmxlIHRvIHVzZSB0aGVzZSBk
ZXZpY2VzLiBUaGUgcmVzdWx0Cj4gd291bGQgYmUgdGhhdCB0aGUgWk5TIFNTRCBpcyByZWNvZ25p
emVkIGFuZCBpbml0aWFsaXplZCwgYnV0IHRoZSBGUwo+IGZvcm1hdCBmYWlscy4KPgo+Pgo+Pj4g
V2UgY2FuIGFncmVlIHRoYXQgYSBudW1iZXIgb2YgaW5pdGlhbCBjdXN0b21lcnMgd2lsbCB1c2Ug
dGhlc2UgZGV2aWNlcwo+Pj4gcmF3LCB1c2luZyB0aGUgaW4ta2VybmVsIEkvTyBwYXRoLCBidXQg
d2l0aG91dCBhIEZTIG9uIHRvcC4KPj4+Cj4+PiBUaG91Z2h0cz8KPj4+Cj4+Pj4gYW5kIG5vdGUg
dGhhdAo+Pj4+IHRoaXMgZW11bGF0aW9uIHdvdWxkIHJlcXVpcmUgdGhlIGRyaXZlIHRvIGJlIG9w
ZXJhdGVkIHdpdGggCj4+Pj4gbXEtZGVhZGxpbmUgdG8gZW5hYmxlCj4+Pj4gem9uZSB3cml0ZSBs
b2NraW5nIGZvciBwcmVzZXJ2aW5nIHdyaXRlIGNvbW1hbmQgb3JkZXIuIFdoaWxlIG9uIGEgCj4+
Pj4gSEREIHRoZQo+Pj4+IHBlcmZvcm1hbmNlIHBlbmFsdHkgaXMgbWluaW1hbCwgaXQgd2lsbCBs
aWtlbHkgYmUgc2lnbmlmaWNhbnQgb24gYSAKPj4+PiBTU0QuCj4+Pgo+Pj4gRXhhY3RseSBteSBj
b25jZXJuLiBJIGRvIG5vdCB3YW50IFpOUyBTU0RzIHRvIGJlIGltcGFjdGVkIGJ5IHRoaXMgdHlw
ZQo+Pj4gb2YgZGVzaWduIGRlY2lzaW9uIGF0IHRoZSBkcml2ZXIgbGV2ZWwuCj4+Cj4+IEJ1dCB5
b3VyIHByb3Bvc2VkIEZTIGxldmVsIGFwcHJvYWNoIHdvdWxkIGVuZCB1cCBkb2luZyB0aGUgZXhh
Y3Qgc2FtZSAKPj4gdGhpbmcgd2l0aAo+PiB0aGUgc2FtZSBsaW1pdGF0aW9uIGFuZCBzbyB0aGUg
c2FtZSBwb3RlbnRpYWwgcGVyZm9ybWFuY2UgaW1wYWN0LiBUaGUgCj4+IGJsb2NrCj4+IGxheWVy
IGdlbmVyaWMgYXBwcm9hY2ggaGFzIHRoZSBhZHZhbnRhZ2UgdGhhdCB3ZSBkbyBub3QgYm90aGVy
IHRoZSAKPj4gaGlnaGVyIGxldmVscwo+PiB3aXRoIHRoZSBpbXBsZW1lbnRhdGlvbiBvZiBpbi1v
cmRlciByZXF1ZXN0IGRpc3BhdGNoIGd1YXJhbnRlZXMuIEZpbGUgCj4+IHN5c3RlbXMKPj4gYXJl
IGNvbXBsZXggZW5vdWdoLiBUaGUgbGVzcyBjb21wbGV4aXR5IGlzIHJlcXVpcmVkIGZvciB6b25l
IHN1cHBvcnQsIAo+PiB0aGUgYmV0dGVyLgo+Cj4gVGhpcyBkZXBlbmRzIHZlcnkgbXVjaCBvbiBo
b3cgdGhlIEZTIC8gYXBwbGljYXRpb24gaXMgbWFuYWdpbmcKPiBzdHJpcHBpbmcuIEF0IHRoZSBt
b21lbnQgb3VyIG1haW4gdXNlIGNhc2UgaXMgZW5hYmxpbmcgdXNlci1zcGFjZQo+IGFwcGxpY2F0
aW9ucyBzdWJtaXR0aW5nIEkvT3MgdG8gcmF3IFpOUyBkZXZpY2VzIHRocm91Z2ggdGhlIGtlcm5l
bC4KPgo+IENhbiB3ZSBlbmFibGUgdGhpcyB1c2UgY2FzZSB0byBzdGFydCB3aXRoPwoKSXQgaXMg
ZnJlZSBmb3IgZXZlcnlvbmUgdG8gbG9hZCBrZXJuZWwgbW9kdWxlcyBpbnRvIHRoZSBrZXJuZWwu
IFRob3NlIAptb2R1bGVzIG1heSBub3QgaGF2ZSB0aGUgYXBwcm9wcmlhdGUgY2hlY2tzIG9yIG1h
eSByZWx5IG9uIHRoZSB6b25lIAphcHBlbmQgZnVuY3Rpb25hbGl0eS4gSGF2aW5nIHBlciB1c2Ut
Y2FzZSBsaW1pdCBpcyBhIG5vLWdvIGFuZCBhdCBiZXN0IGEgCmdhbWUgb2Ygd2hhY2stYS1tb2xl
LgoKWW91IGFscmVhZHkgYWdyZWVkIHRvIGNyZWF0ZSBhIHNldCBvZiBwYXRjaGVzIHRvIGFkZCB0
aGUgYXBwcm9wcmlhdGUgCnN1cHBvcnQgZm9yIGVtdWxhdGluZyB6b25lIGFwcGVuZC4gQXMgdGhl
c2Ugd291bGQgZml4IHlvdXIgc3BlY2lmaWMgCmlzc3VlLCBwbGVhc2UgZ28gYWhlYWQgYW5kIHN1
Ym1pdCB0aG9zZS4KClRoZXJlIGlzIGFub3RoZXIgd2F5LCB0aGF0IHlvdSBtYXkgd2FudCB0byBj
b25zaWRlci4gVGhhdCBpcyB0byB1c2UgClNQREssIHdoaWNoIGJ5cGFzc2VzIHRoZSBzdGFjayBh
bmQgYWxsb3dzIHlvdSB0byBpc3N1ZSBJL09zIGFzIHlvdSBwcmVmZXIuCgpCZXN0LCBNYXRpYXMK
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LW52bWUgbWFpbGluZyBsaXN0CmxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
