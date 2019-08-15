Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE6058EF30
	for <lists+linux-nvme@lfdr.de>; Thu, 15 Aug 2019 17:19:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BQ0yM6RlbGJpGEdDKS1nlLvvfWE5j1yr94igm6yuaeU=; b=g9n31NNwSskay3uNj6aJIA5qH
	I//OZYOzLIZLzT5K/m0Y4aOPmh2L3okbLDj54bz4T2b14Xv29w9KvIhEYHDq2d6E8d2DF56HdEDJ8
	Rk9b86fz4E24Tg+gZyqS6/DXRS1C0UA9rU8qzoU0pj5q3L7aBpmgKGEhr+ytW0EYjvCToLHEjlw+d
	MIrKLBCnsh0O18eYCLX2tA6sCr+eYGET7zkRyXBz4vorgW3P52yzlzj05A+5CHwMzVatgtgnmNX6m
	CMx5uhF2MzTpHjgLlm8J6shneuqI1/XTyeiYtfT6a4sGL8fQpRd936s9oQ++vZx5AsDdOSywoPUzO
	d5PodiYKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyHWY-00021j-K1; Thu, 15 Aug 2019 15:18:46 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyHWN-00021L-AX
 for linux-nvme@lists.infradead.org; Thu, 15 Aug 2019 15:18:39 +0000
Received: by mail-pf1-x443.google.com with SMTP id f17so1479856pfn.6
 for <linux-nvme@lists.infradead.org>; Thu, 15 Aug 2019 08:18:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=tc/nQUkFGnC7LNDXS6KRDGBvkKtg8+bUYsNP2rEYKl4=;
 b=WCCdM6Lh6ybN9XAxxGnLtfCec/u54xrKgQMM2RqDwZ5nWyZ3yVGNKbfiRcVheclcm8
 Zq3wsJt767dYjJe0Gq4f0ex1FBs17Blv/TaZVIaKOVLdV9TzlBF5Uzt1DKnD4p/BdMf+
 k7fOKxF5mdwlNoCyaOtV/tjg9FKMQi8mwVT/4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=tc/nQUkFGnC7LNDXS6KRDGBvkKtg8+bUYsNP2rEYKl4=;
 b=H6PooA5AUmoVKZtJZMI6ZraPwnF3t2TXtHJsD/dG6McAcEbqGZANEYn+N9pVqH8u0A
 SC0UXNVyljZUEbScrPR5zfsdB29GFub7NNqpxlhFo6PKLGT76OTh7GmACF44qnhWIoBr
 S5QAj6rsVgAk0J11+6A5zbXJLID7iNXd5Vne87OdcdH0SSDFFu+pk3j7PVzftQReIJw5
 NaDGoIbLOrxX6F0wAfPVG89263mLvzkMDFgkPN/jYtbUhbM4h9v3Rufx4s34v6BUU7mg
 EcVEAKtRry1ATqjyJQXayR/p/52zEq/KrpPhrD/r1P4/niaEF97Wv//Sk8tY8jQFnnfn
 ENTw==
X-Gm-Message-State: APjAAAW1hwwdcr19q3M49ecJF31JwDtzG3TgMA1dbnOjZ/uiKrZhJF1D
 A/K90EPL3tTwJ882Bf904pqWrc7wDOM=
X-Google-Smtp-Source: APXvYqy3YehLHnJbxcxTK+OilchKJB3vrvi2abMYQ4TJS6r+Y1MZzyN5ALrBGC+RjQ5/0vwbcKNh0g==
X-Received: by 2002:a17:90a:23d0:: with SMTP id
 g74mr2756991pje.115.1565882314357; 
 Thu, 15 Aug 2019 08:18:34 -0700 (PDT)
Received: from [10.69.45.46] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id w26sm3380318pfq.100.2019.08.15.08.18.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 15 Aug 2019 08:18:33 -0700 (PDT)
Subject: Re: [PATCH] nvme-cli/fabrics: Add tos param to connect cmd
To: Max Gurtovoy <maxg@mellanox.com>, Sagi Grimberg <sagi@grimberg.me>,
 Israel Rukshin <israelr@mellanox.com>,
 Linux-nvme <linux-nvme@lists.infradead.org>
References: <1565777981-18755-1-git-send-email-israelr@mellanox.com>
 <1565777981-18755-2-git-send-email-israelr@mellanox.com>
 <33ddd40f-14a8-9506-01dc-65a049f8bb5f@grimberg.me>
 <a447b0ba-31ea-6a12-2fb4-6cef0b95da96@mellanox.com>
From: James Smart <james.smart@broadcom.com>
Message-ID: <d44bfcb2-08c8-d621-6d9f-17c3da9c40d2@broadcom.com>
Date: Thu, 15 Aug 2019 08:18:29 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <a447b0ba-31ea-6a12-2fb4-6cef0b95da96@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_081835_377016_327BA1BE 
X-CRM114-Status: GOOD (  16.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gOC8xNS8yMDE5IDE6NDEgQU0sIE1heCBHdXJ0b3ZveSB3cm90ZToKPgo+IE9uIDgvMTQvMjAx
OSA4OjA4IFBNLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+Pgo+Pj4gQWRkZWQgJ3RvcycgdG8gJ2Nv
bm5lY3QnIGNvbW1hbmQgc28gdXNlcnMgY2FuIHNwZWNpZnkgdGhlIHR5cGUgb2YgCj4+PiBzZXJ2
aWNlLgo+Pj4KPj4+IHVzYWdlIGV4YW1wbGVzOgo+Pj4gbnZtZSBjb25uZWN0IC0tdG9zPTAgLS10
cmFuc3BvcnQ9cmRtYSAtLXRyYWRkcj0xMC4wLjEuMSAtLW5xbj10ZXN0LW52bWUKPj4+IG52bWUg
Y29ubmVjdCAtVCAwIC10IHJkbWEgLWEgMTAuMC4xLjEgLW4gdGVzdF9udm1lCj4+Cj4+IFN0aWxs
IGRvbid0IHNlZSBob3cgdGhpcyBpcyBoYW5kbGVkIGlmIHRoZSBrZXJuZWwgZG9lcyBub3Qgc3Vw
cG9ydAo+PiB0b3MgeWV0Lgo+Cj4gaG93IGFueSBvdGhlciBmZWF0dXJlIHdlIGFkZGVkIHRvIGNv
bm5lY3QgY29tbWFuZCB3aWxsIGFjdCB3aXRoIG9sZCAKPiBrZXJuZWwgPyAoZS5nLiBxdWV1ZV9z
aXplL25yX3F1ZXVlcykKPgo+IGl0IHdpbGwgZmFpbCB0byBnZXQgdG9rZW4gInRva2VuID0gbWF0
Y2hfdG9rZW4ocCwgb3B0X3Rva2VucywgYXJncyk7IiAKPiBhbmQgcmV0dXJuwqAgLUVJTlZBTC4K
Pgo+IElzcmFlbCBjaGVja2VkIHRoYXQuCgpJIHRoaW5rIHdoYXQgU2FnaSdzIGdldHRpbmcgYXQg
aXM6IGl0IHdvdWxkIGJlIHJlYWxseSBuaWNlIHRvIG5vdCBmYWlsIAp0aGUgd2hvbGUgY29ubmVj
dCByZXF1ZXN0IGlmIGFuIGFyZ3VtZW50IGNhbid0IGJlIHBhcnNlZC4gRS5nLiBhIG5ld2VyIApj
bGksIHVzZWQgb24gYW4gb2xkZXIga2VybmVsLCBzaG91bGQgYmUgZnVuY3Rpb25hbCB3aXRoIG9y
IHdpdGhvdXQgdGhlIAp0b3MgYXJndW1lbnQuCgpJZiBzby0gYXMgSSBkb3VidCB0aGUgY2xpIGtu
b3dzIHdoYXQgd2FzIGludmFsaWQgb3Igd2hpY2ggYXJndW1lbnQgd2FzIAppbnZhbGlkIGFuZCBp
dCB3b3VsZCBiZSByZWFsbHkgb2RkIChlc3BlY2lhbGx5IG92ZXIgdGltZSkgdG8gYmFjayBvdXQg
CmFyZ3VtZW50cyBhbmQgdHJ5IGFnYWluIC0gd2UgbmVlZCB0byB1cGRhdGUgdGhlIGtlcm5lbCB0
byB3YXJuIHRoYXQgYW4gCmFyZ3VtZW50IHdhcyBub3QgcGFyc2VkIGFuZCB3YXMgaWdub3JlZCwg
YnV0IGF0dGVtcHQgdG8gdXNlIHdoYXQgaXQgZG9lcyAKcmVjb2duaXplIGFuZCBub3QgcmV0dXJu
IGZhaWx1cmUgdG8gdGhlIGNsaS7CoCBTYWdpID8KCi0tIGphbWVzCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QK
TGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
