Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3C273668
	for <lists+linux-nvme@lfdr.de>; Wed, 24 Jul 2019 20:15:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9H+ITxRkLsiLP45PmTZ5rbdzQRVGvnhU7t41njRQVW4=; b=DluPghsA5UeUH0Rjl/CmkhC4I
	in6Fox17nM8WS/tXFcxnleiE1KXQmh2IaocLcNxAinRGrp29ELCTnLvy4vtLlh+oxWVTnCsCTtFEw
	s6kcp/eYEKEWARTPhxUVl1yiRgvjml1xcuJwiVWepkMZrX+lSue/Y7NivsC1pDW6wvqMwpO+3EKZ/
	2NXkqtp1hAzyR1DLnGJy3FVhkG/g1ut+BvMemW5/l/HsD26Gt9O98Yigt6knBOzrQNd2r0D4G00df
	4pTRtGDRq4DuSX3+G1XLoGL8G6T15I7N/fyHb1uW0mUB3cNHcLWp3HXKCMnbNYikW+mRNyoqkj5hx
	NR/kOYXZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqLnh-00029i-AQ; Wed, 24 Jul 2019 18:15:41 +0000
Received: from mail-pf1-f196.google.com ([209.85.210.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqLnY-00029P-0p
 for linux-nvme@lists.infradead.org; Wed, 24 Jul 2019 18:15:33 +0000
Received: by mail-pf1-f196.google.com with SMTP id g2so21349809pfq.0
 for <linux-nvme@lists.infradead.org>; Wed, 24 Jul 2019 11:15:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=h8D6gzGbhV5rYvZb7kr3VLeXKYiGo3BEA/cHTOEl6CY=;
 b=U+lI0e4rQZl1koFnAesgg0GRIEh+OAJv/CyFvd3KxRVFs2Tdvf0TdOzM++lhiWuZ2R
 1Yt1mdCqfPPGg6Ffqog3Omq9m4/AUpigA5Cg8ciOAYpgGGDFnTe+RoDDcT/H6jNLf6qk
 gxSypLdEh3r+9q+QBafVEi0IrBzwI73dtDppDKBsqTlRRJnLE3E+oMaaVGCDQ22J5bRo
 7OTkN6/ZFSHVCjkpsPs/NYb0BDlN9KO5kpHntbMqJ8fXJDBJtQTb2Aned1bj7Zat80gs
 +uM+ncqPzJWxnECocB+TgZKMjrAyLzbbDohGNc3mJvKQtGNEenDH9UcT2EoBXdNuxhSn
 RILQ==
X-Gm-Message-State: APjAAAXrmQCNJtmc3jFZFB0jDhvIvHLHHbRDZZSUBxepAL/4bQ8ORsMS
 mGiko5JcalqRSDtMKEEgHPY=
X-Google-Smtp-Source: APXvYqxVFxK/YmX1hXs0ODgXCsxzP48dB8+2fJ/HUUQdKLk/ZykPUJ+PYkXp/ZmxJYY0GN8U+XazuA==
X-Received: by 2002:a63:dd17:: with SMTP id t23mr55196759pgg.295.1563992131073; 
 Wed, 24 Jul 2019 11:15:31 -0700 (PDT)
Received: from [10.8.0.6] (162-195-240-247.lightspeed.sntcca.sbcglobal.net.
 [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id e6sm53303978pfn.71.2019.07.24.11.15.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 24 Jul 2019 11:15:30 -0700 (PDT)
Subject: Re: [PATCH v2 10/10] nvme-cli: nvmf auto-connect scripts
To: James Smart <james.smart@broadcom.com>, James Smart
 <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190719225305.11397-1-jsmart2021@gmail.com>
 <20190719225305.11397-11-jsmart2021@gmail.com>
 <4efefb70-7ab1-69af-4f41-63223e9f4ff8@grimberg.me>
 <d5b4ef61-cf1d-ce9c-1bd0-7f372f874320@broadcom.com>
 <2297e9f3-4a9d-e759-5633-aeefe736b09c@grimberg.me>
 <1215e814-30f7-85e6-a9b9-fd7d2c725654@broadcom.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <642f1d36-f0bc-7e5d-7c49-63238bbc058c@grimberg.me>
Date: Wed, 24 Jul 2019 11:15:28 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1215e814-30f7-85e6-a9b9-fd7d2c725654@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_111532_067371_559B6133 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.196 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Simon Schricker <sschricker@suse.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cj4+Pj4+ICsjIEV2ZW50cyBmcm9tIHBlcnNpc3RlbnQgZGlzY292ZXJ5IGNvbnRyb2xsZXJzIG9y
IG52bWUtZmMgCj4+Pj4+IHRyYW5zcG9ydCBldmVudHMKPj4+Pj4gK0FDVElPTj09ImNoYW5nZSIs
IFNVQlNZU1RFTT09Im52bWUiLCBFTlZ7TlZNRV9FVkVOVH09PSJkaXNjb3ZlcnkiLFwKPj4+Pj4g
K8KgIEVOVntOVk1FX0NUUkxfTkFNRX09PSIqIiwgRU5We05WTUVfVFJUWVBFfT09IioiLCAKPj4+
Pj4gRU5We05WTUVfVFJBRERSfT09IioiLCBcCj4+Pj4+ICvCoCBFTlZ7TlZNRV9UUlNWQ0lEfT09
IioiLCBFTlZ7TlZNRV9IT1NUX1RSQUREUn09PSIqIiwgXAo+Pj4+PiArwqAgUlVOKz0iL3Vzci9i
aW4vc3lzdGVtY3RsIC0tbm8tYmxvY2sgc3RhcnQgCj4+Pj4+IG52bWYtY29ubmVjdEAtLWRldmlj
ZT0kZW52e05WTUVfQ1RSTF9OQU1FfVx0LS10cmFuc3BvcnQ9JGVudntOVk1FX1RSVFlQRX1cdC0t
dHJhZGRyPSRlbnZ7TlZNRV9UUkFERFJ9XHQtLXRyc3ZjaWQ9JGVudntOVk1FX1RSU1ZDSUR9XHQt
LWhvc3QtdHJhZGRyPSRlbnZ7TlZNRV9IT1NUX1RSQUREUn0uc2VydmljZSIgCj4+Pj4+Cj4+Pj4K
Pj4+PiBKYW1lcywgc2hvdWxkbid0IHRoaXMgYmUgL2Jpbi9zeXN0ZW1jdGw/Cj4+Pgo+Pj4gSSBk
b24ndCBiZWxpZXZlIHNvLsKgwqAgT24gdGhlIGRpc3Ryb3MgSSBjaGVja2VkLCAvYmluL3N5c3Rl
bWN0bCBpcyBhIAo+Pj4gc29mdCBvciBoYXJkIGxpbmsgdG8gL3Vzci9iaW4vc3lzdGVtY3RsCj4+
Cj4+IE5vdCBhbHdheXMgdGhlIGNhc2UuIExldHMgY2hhbmdlIHRoYXQgdG8gL2Jpbi9zeXN0ZW1j
dGwuCj4gCj4gSSBoYXZlIG5vIHByb2JsZW0gY2hhbmdpbmcgaXQsIGJ1dCBhbSB3b25kZXJpbmcg
d2hhdCByZXNvdXJjZSBpcyBnaXZpbmcgCj4geW91IHRoZSByZWZlcmVuY2UgbG9jYXRpb25zLiBJ
IGNhbid0IGZpbmQgYW55dGhpbmcgdGhhdCBhY3R1YWxseSAKPiBzcGVjaWZpZXMgdGhlIGxvY2F0
aW9uIHdpdGggc29tZSBoYXZpbmcgL2JpbiBhbmQgb3RoZXJzIC91c3IvYmluLiBUaGUgCj4gb3Ro
ZXIgZmlsZXMgc2VlbSB0byBsZWFuIHRvd2FyZCBhIHByZWZlcmVuY2Ugb2YgL3Vzci9iaW4uCgpJ
J20gcnVubmluZyB1YnVudHUgYW5kIHN5c3RlbWN0bCBpcyB1bmRlciAvYmluLCBub3QgYSBzb2Z0
bGluay4KCkkgdGhpbmsgd2Ugc2hvdWxkIGJlIHNhZmUgb24gcmVseWluZyB0aGF0IHN5c3RlbWN0
bCBpcyB1bmRlciAvYmluLi4KCmJ0dywgcmVtaW5kIG1lLCBtdXN0IHdlIGNhbGwgd2l0aCBhYnNv
bHV0ZSBwYXRoIGluIHRoZSBydWxlcz8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LW52bWUK
