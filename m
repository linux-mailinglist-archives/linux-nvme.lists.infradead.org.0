Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC5461FB95B
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jun 2020 18:03:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VvbfnUeKiNy8aveb0tMZTNiseFaq7+OOpZa8FUOX+/M=; b=jc3wBV44KPe/V0Mkc6FMYdfG2
	urebPNUnXYgvuxcp6OrNR/EF8pzhDtBESltzBThDsUYNv/Vs/drHmk8Pz+2gG2Ahf8+0qjg6kLaNC
	yfkMBGQAnU9JscaY+FwB8T8ZP2VTEBL5cH7PVjvDzuEcjIxzwgdhRsJaDhQpnbBAgmuKFnofBph3d
	MM8gGaMTuTeMJTEADvKXriRRQfs15aQKH94YFwBnr2R1ccJRZgONoQj+4yybJe5y22PfAlzK73HLL
	0uv45fBnE+656i3cDdBPNbm3h+1zVrMjdsR0R10ybMD6QWSGp8BP0C8f7xQ5wyWgyM0kQ8fpaXVht
	G8Ugg1kLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlE3j-0008Pn-CS; Tue, 16 Jun 2020 16:03:35 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlE3d-0008Ox-LV
 for linux-nvme@lists.infradead.org; Tue, 16 Jun 2020 16:03:32 +0000
Received: by mail-ej1-x642.google.com with SMTP id l27so22145079ejc.1
 for <linux-nvme@lists.infradead.org>; Tue, 16 Jun 2020 09:03:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=javigon-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=LkfcIz0/k4ivHCzm3Ls3YOta7sgxR06jvilZlQBbMPw=;
 b=ZL9W9SD03mZxCZmNm6BvLKdSrnMwxQoo2otsab+jt8fBSCECZCbYf8gsu5ZOV2SNWZ
 fN4dXzTiXrkNmK3nFUuSxRkisJP0Sz/AoHGGHkwbOoDAicHMK/aeiLvjsN5+QbmdfTe7
 sXfRj81oF6N/PvTDNlr3PeD7y9FZoxX9EK/9IPQMOad+D2nAJRf+nHUr8TJaTZ40jfna
 yUyMZD+WzBBf5CBySe9/dYIZ2WNkxhfxJW4gI2DpKDFMoqgIp32qD/DdcMDzpBWhPJuw
 LCbuLgIIvajJHqJfTTdqkdDK0uezbhs6sgYSwwwhq6jK7P0+X0euHr0HEVOQk4LLuwt6
 90eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=LkfcIz0/k4ivHCzm3Ls3YOta7sgxR06jvilZlQBbMPw=;
 b=os3YRO8u379NMw5OHD8cbKmrjFNizYnWCjGF31Yp4FP/kF/am5Dvzt1u+t+j9auD9Y
 UISKpYJQWKIeadCex6o7T7HbdCJt6vU24y5NDa0nbvLLTX1Dlx5EtMnumo7Bc8YdXr7c
 RouA6U8xRu+hMyEKHzyhsIMWr0JkY3VL2IXtTOEn/5zUoowmAayOdTT8lPRyOoHa0z5d
 /F/15Rs/F7N+WdZv4d6Xr/GkQCTuQnjLThJSNV82OVWEce4pkUpPj2rNi8zuGSFlO8ik
 UOhZqBLZg1zdl65488n8vbCV8xbmxtNHCdPLYg/2L7E6Yo2KR7m7B52wcGGeZhW+H221
 a1Mw==
X-Gm-Message-State: AOAM533Sz9Adq+USwTv3XnpTzieO3i1+YtarSCEO3Wq8W2girS18fzhy
 7bXAEFK1ogDFhDozGTt1iakQ5JjYtww+Di/H
X-Google-Smtp-Source: ABdhPJzfrcZ8pNGxHNkErpUT2/abZedDniDr+TsMcroWsMjv8Lu9nC0awdW06dVWeqM30fA3QZLeUg==
X-Received: by 2002:a17:907:20ee:: with SMTP id
 rh14mr3446554ejb.395.1592323408121; 
 Tue, 16 Jun 2020 09:03:28 -0700 (PDT)
Received: from localhost (ip-5-186-127-235.cgn.fibianet.dk. [5.186.127.235])
 by smtp.gmail.com with ESMTPSA id t20sm11452146ejx.27.2020.06.16.09.03.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 09:03:27 -0700 (PDT)
Date: Tue, 16 Jun 2020 18:03:26 +0200
From: Javier =?utf-8?B?R29uesOhbGV6?= <javier@javigon.com>
To: Matias =?utf-8?B?QmrDuHJsaW5n?= <mb@lightnvm.io>
Subject: Re: [PATCH 5/5] nvme: support for zoned namespaces
Message-ID: <20200616160326.jxs4e37bayxpyyae@MacBook-Pro.localdomain>
References: <20200616104142.zxw25txhsg2eyhsb@mpHalley.local>
 <d433450a-6e18-217c-d133-ea367d8936be@lightnvm.io>
 <20200616120018.en337lcs5y2jh5ne@mpHalley.local>
 <cf899cd9-c3de-7436-84d4-744c0988a6c9@lightnvm.io>
 <20200616122448.4e3slfghv4cojafq@mpHalley.local>
 <CY4PR04MB3751CC8FE4BDFC256F9E9CD1E79D0@CY4PR04MB3751.namprd04.prod.outlook.com>
 <20200616141620.omqf64up523of35t@MacBook-Pro.localdomain>
 <CY4PR04MB37512BCDD74996057697F5CAE79D0@CY4PR04MB3751.namprd04.prod.outlook.com>
 <20200616150217.inezhntsehtcbjsw@MacBook-Pro.localdomain>
 <506571d0-52f4-de88-9438-878618ff738d@lightnvm.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <506571d0-52f4-de88-9438-878618ff738d@lightnvm.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_090330_445161_7B823EC0 
X-CRM114-Status: GOOD (  21.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:642 listed in]
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
 Damien Le Moal <Damien.LeMoal@wdc.com>, Ajay Joshi <Ajay.Joshi@wdc.com>,
 Sagi Grimberg <sagi@grimberg.me>, Keith Busch <Keith.Busch@wdc.com>,
 Dmitry Fomichev <Dmitry.Fomichev@wdc.com>,
 Aravind Ramesh <Aravind.Ramesh@wdc.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 Hans Holmberg <Hans.Holmberg@wdc.com>, Christoph Hellwig <hch@lst.de>,
 Matias Bjorling <Matias.Bjorling@wdc.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gMTYuMDYuMjAyMCAxNzoyMCwgTWF0aWFzIEJqw7hybGluZyB3cm90ZToKPk9uIDE2LzA2LzIw
MjAgMTcuMDIsIEphdmllciBHb256w6FsZXogd3JvdGU6Cj4+T24gMTYuMDYuMjAyMCAxNDo0Miwg
RGFtaWVuIExlIE1vYWwgd3JvdGU6Cj4+Pk9uIDIwMjAvMDYvMTYgMjM6MTYsIEphdmllciBHb256
w6FsZXogd3JvdGU6Cj4+Pj5PbiAxNi4wNi4yMDIwIDEyOjM1LCBEYW1pZW4gTGUgTW9hbCB3cm90
ZToKPj4+Pj5PbiAyMDIwLzA2LzE2IDIxOjI0LCBKYXZpZXIgR29uesOhbGV6IHdyb3RlOgo+Pj4+
Pj5PbiAxNi4wNi4yMDIwIDE0OjA2LCBNYXRpYXMgQmrDuHJsaW5nIHdyb3RlOgo+Pj4+Pj4+T24g
MTYvMDYvMjAyMCAxNC4wMCwgSmF2aWVyIEdvbnrDoWxleiB3cm90ZToKPj4+Pj4+Pj5PbiAxNi4w
Ni4yMDIwIDEzOjE4LCBNYXRpYXMgQmrDuHJsaW5nIHdyb3RlOgo+Pj4+Pj4+Pj5PbiAxNi8wNi8y
MDIwIDEyLjQxLCBKYXZpZXIgR29uesOhbGV6IHdyb3RlOgo+Pj4+Pj4+Pj4+T24gMTYuMDYuMjAy
MCAwODozNCwgS2VpdGggQnVzY2ggd3JvdGU6Cj4+Pj4+Pj4+Pj4+QWRkIHN1cHBvcnQgZm9yIE5W
TSBFeHByZXNzIFpvbmVkIE5hbWVzcGFjZXMgKFpOUykgCj4+Pj4+Pj4+Pj4+Q29tbWFuZCBTZXQg
ZGVmaW5lZAo+Pj4+Pj4+Pj4+PmluIE5WTSBFeHByZXNzIFRQNDA1My4gWm9uZWQgbmFtZXNwYWNl
cyBhcmUgCj4+Pj4+Pj4+Pj4+ZGlzY292ZXJlZCBiYXNlZCBvbiB0aGVpcgo+Pj4+Pj4+Pj4+PkNv
bW1hbmQgU2V0IElkZW50aWZpZXIgcmVwb3J0ZWQgaW4gdGhlIG5hbWVzcGFjZXMgTmFtZXNwYWNl
Cj4+Pj4+Pj4+Pj4+SWRlbnRpZmljYXRpb24gRGVzY3JpcHRvciBsaXN0LiBBIHN1Y2Nlc3NmdWxs
eSBkaXNjb3ZlcmVkIFpvbmVkCj4+Pj4+Pj4+Pj4+TmFtZXNwYWNlIHdpbGwgYmUgcmVnaXN0ZXJl
ZCB3aXRoIHRoZSBibG9jayBsYXllciAKPj4+Pj4+Pj4+Pj5hcyBhIGhvc3QgbWFuYWdlZAo+Pj4+
Pj4+Pj4+PnpvbmVkIGJsb2NrIGRldmljZSB3aXRoIFpvbmUgQXBwZW5kIGNvbW1hbmQgCj4+Pj4+
Pj4+Pj4+c3VwcG9ydC4gQSBuYW1lc3BhY2UgdGhhdAo+Pj4+Pj4+Pj4+PmRvZXMgbm90IHN1cHBv
cnQgYXBwZW5kIGlzIG5vdCBzdXBwb3J0ZWQgYnkgdGhlIGRyaXZlci4KPj4+Pj4+Pj4+Pgo+Pj4+
Pj4+Pj4+V2h5IGFyZSB3ZSBlbmZvcmNpbmcgdGhlIGFwcGVuZCBjb21tYW5kPyBBcHBlbmQgaXMg
Cj4+Pj4+Pj4+Pj5vcHRpb25hbCBvbiB0aGUKPj4+Pj4+Pj4+PmN1cnJlbnQgWk5TIHNwZWNpZmlj
YXRpb24sIHNvIHdlIHNob3VsZCBub3QgbWFrZSAKPj4+Pj4+Pj4+PnRoaXMgbWFuZGF0b3J5IGlu
IHRoZQo+Pj4+Pj4+Pj4+aW1wbGVtZW50YXRpb24uIFNlZSBzcGVjaWZpY3MgYmVsb3cuCj4+Pj4+
Pj4+Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj5UaGVyZSBpcyBhbHJlYWR5IGdlbmVyYWwgc3VwcG9ydCBp
biB0aGUga2VybmVsIGZvciB0aGUgem9uZSBhcHBlbmQKPj4+Pj4+Pj4+Y29tbWFuZC4gRmVlbCBm
cmVlIHRvIHN1Ym1pdCBwYXRjaGVzIHRvIGVtdWxhdGUgdGhlIHN1cHBvcnQuIEl0IGlzCj4+Pj4+
Pj4+Pm91dHNpZGUgdGhlIHNjb3BlIG9mIHRoaXMgcGF0Y2hzZXQuCj4+Pj4+Pj4+Pgo+Pj4+Pj4+
Pgo+Pj4+Pj4+Pkl0IGlzIGZpbmUgdGhhdCB0aGUga2VybmVsIHN1cHBvcnRzIGFwcGVuZCwgYnV0
IHRoZSBaTlMgCj4+Pj4+Pj4+c3BlY2lmaWNhdGlvbgo+Pj4+Pj4+PmRvZXMgbm90IGltcG9zZSB0
aGUgaW1wbGVtZW50YXRpb24gZm9yIGFwcGVuZCwgc28gdGhlIAo+Pj4+Pj4+PmRyaXZlciBzaG91
bGQgbm90Cj4+Pj4+Pj4+ZG8gdGhhdCBlaXRoZXIuCj4+Pj4+Pj4+Cj4+Pj4+Pj4+Wk5TIFNTRHMg
dGhhdCBjaG9vc2UgdG8gbGVhdmUgYXBwZW5kIGFzIGEgbm9uLWltcGxlbWVudGVkIG9wdGlvbmFs
Cj4+Pj4+Pj4+Y29tbWFuZCBzaG91bGQgbm90IHJlbHkgb24gZW11bGF0ZWQgU1cgc3VwcG9ydCwg
c3BlY2lhbGx5IHdoZW4KPj4+Pj4+Pj50cmFkaXRpb25hbCB3cml0ZXMgd29yayB2ZXJ5IGZpbmUg
Zm9yIGEgbGFyZ2UgcGFydCBvZiAKPj4+Pj4+Pj5jdXJyZW50IFpOUyB1c2UKPj4+Pj4+Pj5jYXNl
cy4KPj4+Pj4+Pj4KPj4+Pj4+Pj5QbGVhc2UsIHJlbW92ZSB0aGlzIHZpcnR1YWwgY29uc3RyYWlu
dC4KPj4+Pj4+Pgo+Pj4+Pj4+VGhlIFpvbmUgQXBwZW5kIGNvbW1hbmQgaXMgbWFuZGF0b3J5IGZv
ciB6b25lZCBibG9jayBkZXZpY2VzLiBQbGVhc2UKPj4+Pj4+PnNlZSBodHRwczovL2x3bi5uZXQv
QXJ0aWNsZXMvODE4NzA5LyBmb3IgdGhlIGJhY2tncm91bmQuCj4+Pj4+Pgo+Pj4+Pj5JIGRvIG5v
dCBzZWUgYW55d2hlcmUgaW4gdGhlIGJsb2NrIGxheWVyIHRoYXQgYXBwZW5kIGlzIG1hbmRhdG9y
eSBmb3IKPj4+Pj4+em9uZWQgZGV2aWNlcy4gQXBwZW5kIGlzIGVtdWxhdGVkIG9uIFpCQywgYnV0
IGJleW9uZCB0aGF0IHRoZXJlIGlzIG5vCj4+Pj4+Pm1hbmRhdG9yeSBiaXRzLiBQbGVhc2UgZXhw
bGFpbi4KPj4+Pj4KPj4+Pj5UaGlzIGlzIHRvIGFsbG93IGEgc2luZ2xlIHdyaXRlIElPIHBhdGgg
Zm9yIGFsbCB0eXBlcyBvZiB6b25lZCAKPj4+Pj5ibG9jayBkZXZpY2UgZm9yCj4+Pj4+aGlnaGVy
IGxheWVycywgZS5nIGZpbGUgc3lzdGVtcy4gVGhlIG9uLWdvaW5nIHJlLXdvcmsgb2YgYnRyZnMg
Cj4+Pj4+em9uZSBzdXBwb3J0IGZvcgo+Pj4+Pmluc3RhbmNlIG5vdyByZWxpZXMgMTAwJSBvbiB6
b25lIGFwcGVuZCBiZWluZyBzdXBwb3J0ZWQuIFRoYXQgCj4+Pj4+c2lnbmlmaWNhbnRseQo+Pj4+
PnNpbXBsaWZpZXMgdGhlIGZpbGUgc3lzdGVtIHN1cHBvcnQgYW5kIG1vcmUgaW1wb3J0YW50bHkg
cmVtb3ZlIAo+Pj4+PnRoZSBuZWVkIGZvcgo+Pj4+PmxvY2tpbmcgYXJvdW5kIGJsb2NrIGFsbG9j
YXRpb24gYW5kIEJJTyBpc3N1aW5nLCBhbGxvd2luZyB0byAKPj4+Pj5wcmVzZXJ2ZSBhIGZ1bGx5
Cj4+Pj4+YXN5bmNocm9ub3VzIHdyaXRlIHBhdGggdGhhdCBjYW4gaW5jbHVkZSB3b3JrcXVldWVz
IGZvciAKPj4+Pj5lZmZpY2llbnQgQ1BVIHVzYWdlIG9mCj4+Pj4+dGhpbmdzIGxpa2UgZW5jcnlw
dGlvbiBhbmQgY29tcHJlc3Npb24uIFdpdGhvdXQgem9uZSBhcHBlbmQsIAo+Pj4+PmZpbGUgc3lz
dGVtIHdvdWxkCj4+Pj4+ZWl0aGVyICgxKSBoYXZlIHRvIHJlamVjdCB0aGVzZSBkcml2ZXMgdGhh
dCBkbyBub3Qgc3VwcG9ydCAKPj4+Pj56b25lIGFwcGVuZCwgb3IgKDIpCj4+Pj4+aW1wbGVtZW50
IDIgZGlmZmVyZW50IHdyaXRlIElPIHBhdGggKHNsb3dlciByZWd1bGFyIHdyaXRlIGFuZCAKPj4+
Pj56b25lIGFwcGVuZCkuIE5vbmUKPj4+Pj5vZiB0aGVzZSBvcHRpb25zIGFyZSBpZGVhbCwgdG8g
c2F5IHRoZSBsZWFzdC4KPj4+Pj4KPj4+Pj5TbyB0aGUgYXBwcm9hY2ggaXM6IG1hbmRhdGUgem9u
ZSBhcHBlbmQgc3VwcG9ydCBmb3IgWk5TIAo+Pj4+PmRldmljZXMuIFRvIGFsbG93IG90aGVyCj4+
Pj4+Wk5TIGRyaXZlcywgYW4gZW11bGF0aW9uIHNpbWlsYXIgdG8gU0NTSSBjYW4gYmUgaW1wbGVt
ZW50ZWQsIAo+Pj4+PndpdGggdGhhdCBlbXVsYXRpb24KPj4+Pj5pZGVhbGx5IGNvbWJpbmVkIHRv
IHdvcmsgZm9yIGJvdGggdHlwZXMgb2YgZHJpdmVzIGlmIHBvc3NpYmxlLgo+Pj4+Cj4+Pj5FbmZv
cmNpbmcgUUQ9MSBiZWNvbWVzIGEgcHJvYmxlbSBvbiBkZXZpY2VzIHdpdGggbGFyZ2Ugem9uZXMu
IEluCj4+Pj5hIFpOUyBkZXZpY2UgdGhhdCBoYXMgc21hbGxlciB6b25lcyB0aGlzIHNob3VsZCBu
b3QgYmUgYSBwcm9ibGVtLgo+Pj4KPj4+TGV0J3MgYmUgcHJlY2lzZTogdGhpcyBpcyBub3QgcnVu
bmluZyB0aGUgZHJpdmUgYXQgUUQ9MSwgaXQgaXMgImF0IAo+Pj5tb3N0IG9uZQo+Pj53cml0ZSAq
cmVxdWVzdCogcGVyIHpvbmUiLiBJZiB0aGUgRlMgaXMgc2ltdWx0YW5lb3VzbHkgdXNpbmcgCj4+
Pm11bHRpcGxlIGJsb2NrCj4+Pmdyb3VwcyBtYXBwZWQgdG8gZGlmZmVyZW50IHpvbmVzLCB5b3Ug
d2lsbCBnZXQgYSB0b3RhbCB3cml0ZSBRRCA+IAo+Pj4xLCBhbmQgYXMgbWFueQo+Pj5yZWFkcyBh
cyB5b3Ugd2FudC4KPj4+Cj4+Pj5Xb3VsZCB5b3UgYWdyZWUgdGhhdCBpdCBpcyBwb3NzaWJsZSB0
byBoYXZlIGEgd3JpdGUgcGF0aCB0aGF0IHJlbGllcyBvbgo+Pj4+UUQ9MSwgd2hlcmUgdGhlIEZT
IC8gYXBwbGljYXRpb24gaGFzIHRoZSByZXNwb25zaWJpbGl0eSBmb3IgZW5mb3JjaW5nCj4+Pj50
aGlzPyBEb3duIHRoZSByb2FkIHRoaXMgUUQgY2FuIGJlIGluY3JlYXNlZCBpZiB0aGUgZGV2aWNl
IGlzIGFibGUgdG8KPj4+PmJ1ZmZlciB0aGUgd3JpdGVzLgo+Pj4KPj4+RG9pbmcgUUQ9MSBwZXIg
em9uZSBmb3Igd3JpdGVzIGF0IHRoZSBGUyBsYXllciwgdGhhdCBpcywgYXQgdGhlIAo+Pj5CSU8g
bGF5ZXIgZG9lcwo+Pj5ub3Qgd29yay4gVGhpcyBpcyBiZWNhdXNlIEJJT3MgY2FuIGJlIGFzIGxh
cmdlIGFzIHRoZSBGUyB3YW50cyAKPj4+dGhlbSB0byBiZS4gU3VjaAo+Pj5sYXJnZSBCSU8gd2ls
bCBiZSBzcGxpdCBpbnRvIG11bHRpcGxlIHJlcXVlc3RzIGluIHRoZSBibG9jayBsYXllciwgCj4+
PnJlc3VsdGluZyBpbgo+Pj5tb3JlIHRoYW4gb25lIHdyaXRlIHBlciB6b25lLiBUaGF0IGlzIHdo
eSB0aGUgem9uZSB3cml0ZSBsb2NraW5nIAo+Pj5pcyBhdCB0aGUKPj4+c2NoZWR1bGVyIGxldmVs
LCBiZXR3ZWVuIEJJTyBzcGxpdCBhbmQgcmVxdWVzdCBkaXNwYXRjaC4gVGhhdCBhdm9pZHMgdGhl
Cj4+Pm11bHRpcGxlIHJlcXVlc3RzIGZyYWdtZW50cyBvZiBhIGxhcmdlIEJJTyB0byBiZSByZW9y
ZGVyZWQgYW5kIAo+Pj5mYWlsLiBUaGF0IGlzCj4+Pm1hbmRhdG9yeSBhcyB0aGUgYmxvY2sgbGF5
ZXIgaXRzZWxmIGNhbiBvY2Nhc2lvbmFsbHkgcmVvcmRlciAKPj4+cmVxdWVzdHMgYW5kIGxvd2Vy
Cj4+PmxldmVscyBzdWNoIGFzIEFIQ0kgSFcgaXMgYWxzbyBub3RvcmlvdXNseSBnb29kIGF0IHJl
dmVyc2luZyBzZXF1ZW50aWFsCj4+PnJlcXVlc3RzLiBGb3IgTlZNZSB3aXRoIG11bHRpLXF1ZXVl
LCB0aGUgSU8gaXNzdWluZyBwcm9jZXNzIAo+Pj5nZXR0aW5nIHJlc2NoZWR1bGVkCj4+Pm9uIGEg
ZGlmZmVyZW50IENQVSBjYW4gcmVzdWx0IGluIHNlcXVlbnRpYWwgSU9zIGJlaW5nIGluIGRpZmZl
cmVudCAKPj4+cXVldWVzLCB3aXRoCj4+PnRoZSBsaWtlbHkgcmVzdWx0IG9mIGFuIG91dC1vZi1v
cmRlciBleGVjdXRpb24uIEFsbCBjYXNlcyBhcmUgCj4+PmF2b2lkZWQgd2l0aCB6b25lCj4+Pndy
aXRlIGxvY2tpbmcgYW5kIGF0IG1vc3Qgb25lIHdyaXRlIHJlcXVlc3QgZGlzcGF0Y2ggcGVyIHpv
bmUgYXMgCj4+PnJlY29tbWVuZGVkIGJ5Cj4+PnRoZSBaTlMgc3BlY2lmaWNhdGlvbnMgKFpCQyBh
bmQgWkFDIHN0YW5kYXJkcyBmb3IgU01SIEhERHMgYXJlIAo+Pj5zaWxlbnQgb24gdGhpcykuCj4+
Pgo+Pgo+PkkgdW5kZXJzdGFuZC4gSSBhZ3JlZSB0aGF0IHRoZSBjdXJyZW50IEZTcyBzdXBwb3J0
aW5nIFpOUyBmb2xsb3cgdGhpcwo+PmFwcHJvYWNoIGFuZCBpdCBtYWtlcyBzZW5zZSB0aGF0IHRo
ZXJlIGlzIGEgY29tbW9uIGludGVyZmFjZSB0aGF0Cj4+c2ltcGxpZmllcyB0aGUgRlMgaW1wbGVt
ZW50YXRpb24uIFNlZSB0aGUgY29tbWVudCBiZWxvdyBvbiB0aGUgcGFydCBJCj4+YmVsaWV2ZSB3
ZSBzZWUgdGhpbmdzIGRpZmZlcmVudGx5Lgo+Pgo+Pgo+Pj4+SSB3b3VsZCBiZSBPSyB3aXRoIHNv
bWUgRlMgaW1wbGVtZW50YXRpb25zIHRvIHJlbHkgb24gYXBwZW5kIGFuZCBpbXBvc2UKPj4+PnRo
ZSBjb25zdHJhaW50IHRoYXQgYXBwZW5kIGhhcyB0byBiZSBzdXBwb3J0ZWQgKGFuZCBpdCB3b3Vs
ZCBiZSBvdXIgam9iCj4+Pj50byBjaGFuZ2UgdGhhdCksIGJ1dCBJIHdvdWxkIGxpa2UgdG8gYXZv
aWQgdGhlIGRyaXZlciByZWplY3RpbmcKPj4+PmluaXRpYWxpemluZyB0aGUgZGV2aWNlIGJlY2F1
c2UgY3VycmVudCBGUyBpbXBsZW1lbnRhdGlvbnMgaGF2ZQo+Pj4+aW1wbGVtZW50ZWQgdGhpcyBs
b2dpYy4KPj4+Cj4+PldoYXQgaXMgdGhlIGRpZmZlcmVuY2UgYmV0d2VlbiB0aGUgZHJpdmVyIHJl
amVjdGluZyBkcml2ZXMgYW5kIHRoZSAKPj4+RlMgcmVqZWN0aW5nCj4+PnRoZSBzYW1lIGRyaXZl
cyA/IFRoYXQgaGFzIHRoZSBzYW1lIGVuZCByZXN1bHQgdG8gbWU6IGFuIGVudGlyZSAKPj4+Y2xh
c3Mgb2YgZGV2aWNlcwo+Pj5jYW5ub3QgYmUgdXNlZCBhcyBkZXNpcmVkIGJ5IHRoZSB1c2VyLiBJ
bXBsZW1lbnRpbmcgem9uZSBhcHBlbmQgCj4+PmVtdWxhdGlvbiBhdm9pZHMKPj4+dGhlIHJlamVj
dGlvbiBlbnRpcmVseSB3aGlsZSBzdGlsbCBhbGxvd2luZyB0aGUgRlMgdG8gaGF2ZSBhIAo+Pj5z
aW5nbGUgd3JpdGUgSU8KPj4+cGF0aCwgdGh1cyBzaW1wbGlmeWluZyB0aGUgY29kZS4KPj4KPj5U
aGUgZGlmZmVyZW5jZSBpcyB0aGF0IHVzZXJzIHRoYXQgdXNlIGEgcmF3IFpOUyBkZXZpY2Ugc3Vi
bWl0dGluZyBJL08KPj50aHJvdWdoIHRoZSBrZXJuZWwgd291bGQgc3RpbGwgYmUgYWJsZSB0byB1
c2UgdGhlc2UgZGV2aWNlcy4gVGhlIHJlc3VsdAo+PndvdWxkIGJlIHRoYXQgdGhlIFpOUyBTU0Qg
aXMgcmVjb2duaXplZCBhbmQgaW5pdGlhbGl6ZWQsIGJ1dCB0aGUgRlMKPj5mb3JtYXQgZmFpbHMu
Cj4+Cj4+Pgo+Pj4+V2UgY2FuIGFncmVlIHRoYXQgYSBudW1iZXIgb2YgaW5pdGlhbCBjdXN0b21l
cnMgd2lsbCB1c2UgdGhlc2UgZGV2aWNlcwo+Pj4+cmF3LCB1c2luZyB0aGUgaW4ta2VybmVsIEkv
TyBwYXRoLCBidXQgd2l0aG91dCBhIEZTIG9uIHRvcC4KPj4+Pgo+Pj4+VGhvdWdodHM/Cj4+Pj4K
Pj4+Pj5hbmQgbm90ZSB0aGF0Cj4+Pj4+dGhpcyBlbXVsYXRpb24gd291bGQgcmVxdWlyZSB0aGUg
ZHJpdmUgdG8gYmUgb3BlcmF0ZWQgd2l0aCAKPj4+Pj5tcS1kZWFkbGluZSB0byBlbmFibGUKPj4+
Pj56b25lIHdyaXRlIGxvY2tpbmcgZm9yIHByZXNlcnZpbmcgd3JpdGUgY29tbWFuZCBvcmRlci4g
V2hpbGUgCj4+Pj4+b24gYSBIREQgdGhlCj4+Pj4+cGVyZm9ybWFuY2UgcGVuYWx0eSBpcyBtaW5p
bWFsLCBpdCB3aWxsIGxpa2VseSBiZSBzaWduaWZpY2FudCAKPj4+Pj5vbiBhIFNTRC4KPj4+Pgo+
Pj4+RXhhY3RseSBteSBjb25jZXJuLiBJIGRvIG5vdCB3YW50IFpOUyBTU0RzIHRvIGJlIGltcGFj
dGVkIGJ5IHRoaXMgdHlwZQo+Pj4+b2YgZGVzaWduIGRlY2lzaW9uIGF0IHRoZSBkcml2ZXIgbGV2
ZWwuCj4+Pgo+Pj5CdXQgeW91ciBwcm9wb3NlZCBGUyBsZXZlbCBhcHByb2FjaCB3b3VsZCBlbmQg
dXAgZG9pbmcgdGhlIGV4YWN0IAo+Pj5zYW1lIHRoaW5nIHdpdGgKPj4+dGhlIHNhbWUgbGltaXRh
dGlvbiBhbmQgc28gdGhlIHNhbWUgcG90ZW50aWFsIHBlcmZvcm1hbmNlIGltcGFjdC4gCj4+PlRo
ZSBibG9jawo+Pj5sYXllciBnZW5lcmljIGFwcHJvYWNoIGhhcyB0aGUgYWR2YW50YWdlIHRoYXQg
d2UgZG8gbm90IGJvdGhlciB0aGUgCj4+PmhpZ2hlciBsZXZlbHMKPj4+d2l0aCB0aGUgaW1wbGVt
ZW50YXRpb24gb2YgaW4tb3JkZXIgcmVxdWVzdCBkaXNwYXRjaCBndWFyYW50ZWVzLiAKPj4+Rmls
ZSBzeXN0ZW1zCj4+PmFyZSBjb21wbGV4IGVub3VnaC4gVGhlIGxlc3MgY29tcGxleGl0eSBpcyBy
ZXF1aXJlZCBmb3Igem9uZSAKPj4+c3VwcG9ydCwgdGhlIGJldHRlci4KPj4KPj5UaGlzIGRlcGVu
ZHMgdmVyeSBtdWNoIG9uIGhvdyB0aGUgRlMgLyBhcHBsaWNhdGlvbiBpcyBtYW5hZ2luZwo+PnN0
cmlwcGluZy4gQXQgdGhlIG1vbWVudCBvdXIgbWFpbiB1c2UgY2FzZSBpcyBlbmFibGluZyB1c2Vy
LXNwYWNlCj4+YXBwbGljYXRpb25zIHN1Ym1pdHRpbmcgSS9PcyB0byByYXcgWk5TIGRldmljZXMg
dGhyb3VnaCB0aGUga2VybmVsLgo+Pgo+PkNhbiB3ZSBlbmFibGUgdGhpcyB1c2UgY2FzZSB0byBz
dGFydCB3aXRoPwo+Cj5JdCBpcyBmcmVlIGZvciBldmVyeW9uZSB0byBsb2FkIGtlcm5lbCBtb2R1
bGVzIGludG8gdGhlIGtlcm5lbC4gVGhvc2UgCj5tb2R1bGVzIG1heSBub3QgaGF2ZSB0aGUgYXBw
cm9wcmlhdGUgY2hlY2tzIG9yIG1heSByZWx5IG9uIHRoZSB6b25lIAo+YXBwZW5kIGZ1bmN0aW9u
YWxpdHkuIEhhdmluZyBwZXIgdXNlLWNhc2UgbGltaXQgaXMgYSBuby1nbyBhbmQgYXQgYmVzdCAK
PmEgZ2FtZSBvZiB3aGFjay1hLW1vbGUuCgpMZXQncyBmb2N1cyBvbiBtYWlubGluZSBzdXBwb3J0
LiBXZSBhcmUgbGVhdmluZyBhcHBlbmQgYXMgbm90IGVuYWJsZWQKYmFzZWQgb24gY3VzdG9tZXIg
cmVxdWVzdHMgZm9yIHNvbWUgWk5TIHByb2R1Y3RzIGFuZCB3b3VsZCBsaWtlIHRoaXMKZGV2aWNl
cyB0byBiZSBzdXBwb3J0ZWQuIFRoaXMgaXMgbm90IGF0IGFsbCBhIGNvcm5lciB1c2UtY2FzZSBi
dXQgYSB2ZXJ5CmdlbmVyYWwgb25lLgoKPgo+WW91IGFscmVhZHkgYWdyZWVkIHRvIGNyZWF0ZSBh
IHNldCBvZiBwYXRjaGVzIHRvIGFkZCB0aGUgYXBwcm9wcmlhdGUgCj5zdXBwb3J0IGZvciBlbXVs
YXRpbmcgem9uZSBhcHBlbmQuIEFzIHRoZXNlIHdvdWxkIGZpeCB5b3VyIHNwZWNpZmljIAo+aXNz
dWUsIHBsZWFzZSBnbyBhaGVhZCBhbmQgc3VibWl0IHRob3NlLgoKSSBhZ3JlZWQgdG8gc29sdmUg
dGhlIHVzZSBjYXNlIHRoYXQgc29tZSBvZiBvdXIgY3VzdG9tZXJzIGFyZSBlbmFibGluZwphbmQg
dGhpcyBpcyB3aGF0IEkgYW0gZG9pbmcuCgpBZ2FpbiwgdG8gc3RhcnQgd2l0aCBJIHdvdWxkIGxp
a2UgdG8gaGF2ZSBhIHBhdGggd2hlcmUgWk5TIG5hbWVzcGFjZXMgYXJlCmlkZW50aWZpZWQgaW5k
ZXBlbmRlbnRseSBvZiBhcHBlbmQgc3VwcG9ydC4gVGhlbiBzcGVjaWZpYyB1c2VycyBjYW4KcmVx
dWlyZSBhcHBlbmQgaWYgdGhleSBwbGVhc2UgdG8gZG8gc28uIFdlIHdpbGwgb2YgY291cnNlIHRh
a2UgY2FyZSBvZgpzZW5kaW5nIHBhdGNoZXMgZm9yIHRoaXMuCgpUaGFua3MsCkphdmllcgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtbnZtZSBt
YWlsaW5nIGxpc3QKbGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
