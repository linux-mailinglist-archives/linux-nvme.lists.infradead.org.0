Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6FDF1D1F29
	for <lists+linux-nvme@lfdr.de>; Wed, 13 May 2020 21:27:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2ORwPPsP6bGCZOS0m21wDpaCGBEsTVefOaIIM8KkEm8=; b=ZiffziwU4MPNjZI5PMvCCoiN/
	locAon/I91tF8VZShmNtjz6DUBqgg4DMIWj6GH3dEW9W66vOU9cKtXeRVoUGERx9nsHsNqA7kgR2j
	euf7is7z8hdX3/8cE9Gp5DKTQb39yYF142Sk7TQdyXvApFEe3Ybqjskb528bRMjrJhzpzNEkwqID0
	d1o35w6EzP7EwcTJPxoIfLwefOx6b0P7brXN6in+yt4nTar73PAp2K/40pbmpv4p+Eqf7OmUvDklO
	qITTAPNs7F5g5U17BSGa9vL+AfPACacr6BctxHj1xmrrAZFWTsSlTIfJ5UHOwDSuSwOmA7W1BSGvS
	t0tILSm5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYx2l-00040t-I3; Wed, 13 May 2020 19:27:51 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYx2f-00040L-C5
 for linux-nvme@lists.infradead.org; Wed, 13 May 2020 19:27:46 +0000
Received: by mail-wr1-x444.google.com with SMTP id j5so925299wrq.2
 for <linux-nvme@lists.infradead.org>; Wed, 13 May 2020 12:27:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=Xr8f23+ndCgshEXPt/6HLyahMYBvTF2hxLdzPEw/544=;
 b=Rf9OkCNkd3irkHx3XAj6SPtEdPYTdCtGFwNPqUP35cBXxHgza0+V6Y/tI3w27IPGK6
 mRtfmYQLwdJZdWtSQ6yzJg+CSMcc8d7mleU7RF7CD63cPGuuYk5hsCvAgS0ENJ5lwA0A
 mBRHqfj+8QPjMVBnvsqw5gFA/6YJFtOMcuDmU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=Xr8f23+ndCgshEXPt/6HLyahMYBvTF2hxLdzPEw/544=;
 b=WXQvf4omAvOkKbk3tVWPA+nPa8j7gidSZ3bDni8zOHXGnF6Mdbk1pAGP+vbhNNqla3
 cB+i9KjU1+eczROm2kIW7qGep0limHnQXccMSFIoN6ERxhrvTGV/WhVlenBC3tHuqiIS
 Crf5jv2h+cc4jd4YJM+NHLKtVfMiXPX/sVKIGQFZa0h7c506G98g8G2JqOUnj2ae0bGr
 GmCWcdVCgGb+P94UoD60Z9C3/V0MGEI5Y/OftU1d70ZahmGlMuyDhauAVy0+ADgSjgpV
 vAMvlK2db6k3xOXStUQa1SujOrZmKX0HmFmxDUgdyVnTeLANgVVp0XxoIraSloPQhB6/
 OMjA==
X-Gm-Message-State: AOAM531emnafkZfrLyffcaVBK2bCIjG4kRjXmGJNLgc5phA0tBtTIHVx
 VVxQb57aOm7fdcJNe9GxOzIMUA==
X-Google-Smtp-Source: ABdhPJyMWNDYh90814gZGoj1zkofiQl0dZpkxJk7FjaZCYQALs04kwVWUP7wiTnd+rg5EgTgGtcwOg==
X-Received: by 2002:a5d:4c86:: with SMTP id z6mr882593wrs.279.1589398063848;
 Wed, 13 May 2020 12:27:43 -0700 (PDT)
Received: from [10.230.185.151] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id p7sm1405448wmg.38.2020.05.13.12.27.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2020 12:27:43 -0700 (PDT)
Subject: Re: [PATCH 13/16] nvme: add Metadata Capabilities enumerations
To: Max Gurtovoy <maxg@mellanox.com>, linux-nvme@lists.infradead.org,
 kbusch@kernel.org, hch@lst.de, sagi@grimberg.me, martin.petersen@oracle.com,
 jsmart2021@gmail.com, axboe@kernel.dk
References: <20200504155755.221125-1-maxg@mellanox.com>
 <20200504155755.221125-14-maxg@mellanox.com>
From: James Smart <james.smart@broadcom.com>
Message-ID: <4d576a89-b51d-cf8e-c19f-50944d9ddb75@broadcom.com>
Date: Wed, 13 May 2020 12:27:38 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200504155755.221125-14-maxg@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_122745_413499_3B25F21B 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: vladimirk@mellanox.com, idanb@mellanox.com, israelr@mellanox.com,
 shlomin@mellanox.com, oren@mellanox.com, nitzanc@mellanox.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiA1LzQvMjAyMCA4OjU3IEFNLCBNYXggR3VydG92b3kgd3JvdGU6Cj4gRnJvbTogSXNyYWVs
IFJ1a3NoaW4gPGlzcmFlbHJAbWVsbGFub3guY29tPgo+Cj4gVGhlIGVudW1lcmF0aW9ucyB3aWxs
IGJlIHVzZWQgdG8gZXhwb3NlIHRoZSBuYW1lc3BhY2UgbWV0YWRhdGEgZm9ybWF0IGJ5Cj4gdGhl
IHRhcmdldC4KPgo+IFN1Z2dlc3RlZC1ieTogQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+
Cj4gU2lnbmVkLW9mZi1ieTogSXNyYWVsIFJ1a3NoaW4gPGlzcmFlbHJAbWVsbGFub3guY29tPgo+
IFNpZ25lZC1vZmYtYnk6IE1heCBHdXJ0b3ZveSA8bWF4Z0BtZWxsYW5veC5jb20+Cj4gUmV2aWV3
ZWQtYnk6IENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0LmRlPgo+IC0tLQo+ICAgaW5jbHVkZS9s
aW51eC9udm1lLmggfCA2ICsrKysrKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygr
KQo+Cj4KClJldmlld2VkLWJ5OsKgIEphbWVzIFNtYXJ0IDxqYW1lcy5zbWFydEBicm9hZGNvbS5j
b20+CgotLSBqYW1lcwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LW52bWUgbWFpbGluZyBsaXN0CmxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52
bWUK
