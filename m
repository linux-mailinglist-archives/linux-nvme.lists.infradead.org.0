Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4853C16C2D
	for <lists+linux-nvme@lfdr.de>; Tue,  7 May 2019 22:26:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=apRs+706UdaNyh33CtKT3vwGUYhYD/XLN3Ha2VT2jB8=; b=NtJFYtz808FdokHp7gubU+FyP
	VusjDmOlGKMwbDTJEjOtLVnx4rcYIuwAhHpSptXUPjja5KuMW6Ajecc1Uueev8u/p8FlCr9lWyORW
	3KezUYq6hgblsGj3KO2VH/DcmUZXZSVsqHRhPYoopQ484XrvRLhmDAd4Pa3Wi0bfenb3Y/fz5Pjcw
	tNUO6ujnkUD84A5uKcrE1L3+qKgqxYvXH+YN+WSjPsjCLvOIn02eiemOEOyjM5RQ1EtsZe6NqiBU6
	QFgwk8S9/U/pUKygsziGxy8RoJVOTOzI/Re9fVrS88fIRgb68JvAt20I+ensaP7d8hMq+flHt60f/
	0EXZCDSYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO6fr-0006s2-9E; Tue, 07 May 2019 20:26:51 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO6fm-0006ri-S6
 for linux-nvme@lists.infradead.org; Tue, 07 May 2019 20:26:48 +0000
Received: by mail-pf1-x444.google.com with SMTP id 10so9245750pfo.5
 for <linux-nvme@lists.infradead.org>; Tue, 07 May 2019 13:26:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=+PXd1fniL8KOQu6ii/Zu7UlUTJ9g1ys1tqY7xx12ucM=;
 b=PQvlk3rBGdGR+ODjUqIpr+6vY8uInvddIZcy0yoe2GHLribNjxEmhZkhpyitdOHeJz
 tuUKhFnzJMZi8eXhEeqzagWajnuqwMuIMMw4iEiYBiZICsJxXD2zWT2OvzXAEjLmzXVv
 LgFVeJ5CgU13NwBsMS2qBhy6JfP+kIIao9Eac=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=+PXd1fniL8KOQu6ii/Zu7UlUTJ9g1ys1tqY7xx12ucM=;
 b=ibKYk69c5fPwjBhKk5wc1FondWkCf+ytjZJPTElG0mSGvisXvCCm5/Q/nu3Ez7gyfr
 wp1z1QWftXvy+JC5N2AYNn1zGApLAAQrwKe5Hm8U6HaM80cB/RYHkeMcZDJLLhxqtWd7
 NHayfyme1Hd7hyCAUw6+8Aoe3OtQCW77brxwjv69pvHsPcOEX8kWQdt8uM68P1VYBIlf
 NtLmli9PNyWwLSW6/IWeZhpy/Xbsq9UNzyLhu6aXTfjMINW4Ou0sLC+27zSb0BxHG8X5
 AXazuo/0j8y8TqUCLkQWaEHrnRmtsD1rUE1dHoarDm4FovNoUNrOkz0ITwOdcW4UxlRM
 oTBA==
X-Gm-Message-State: APjAAAWDg0bRa8VGUUXSjaGF4JuctkwpJQlr34NgTe3frZIvZJO4V4Ev
 XSG/yT4ooEpUcR8F8h/1mnOlejTaLH0=
X-Google-Smtp-Source: APXvYqy+l9poLBd5v/wHS9dYdKCcZ7yxUIHRWQbRE/4rQ6GyuYqp25u7Nt7a4MeTscivthxmn/AdyA==
X-Received: by 2002:a65:6116:: with SMTP id z22mr2196836pgu.50.1557260805956; 
 Tue, 07 May 2019 13:26:45 -0700 (PDT)
Received: from [10.69.37.149] ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id k26sm17399887pfi.136.2019.05.07.13.26.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 13:26:45 -0700 (PDT)
Subject: Re: [PATCH nvme-cli rfc 5/5] nvmf auto-connect scripts
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190504000456.3888-1-jsmart2021@gmail.com>
 <20190504000456.3888-6-jsmart2021@gmail.com>
From: James Smart <james.smart@broadcom.com>
Message-ID: <fd4af817-3a90-380b-b485-81b44c12c8e9@broadcom.com>
Date: Tue, 7 May 2019 13:26:43 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190504000456.3888-6-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_132646_917340_A637A77C 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Hannes Reinecke <hare@suse.com>, Simon Schricker <sschricker@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cj4gKyMgRXZlbnRzIGZyb20gcGVyc2lzdGVudCBkaXNjb3ZlcnkgY29udHJvbGxlcnMgb3IgbnZt
ZS1mYyB0cmFuc3BvcnQgZXZlbnRzCj4gK0FDVElPTj09ImNoYW5nZSIsIFNVQlNZU1RFTT09Im52
bWUiLCBFTlZ7TlZNRV9FVkVOVH09PSJkaXNjb3ZlcnkiLFwKPiArICBFTlZ7TlZNRV9DVExSX05B
TUV9PT0iKiIsIEVOVntOVk1FX1RSVFlQRX09PSIqIiwgRU5We05WTUVfVFJBRERSfT09IioiLCBc
Cj4gKyAgRU5We05WTUVfVFJTVkNJRH09PSIqIiwgRU5We05WTUVfSE9TVF9UUkFERFJ9PT0iKiIs
IFwKPiArICBSVU4rPSIvdXNyL2Jpbi9zeXN0ZW1jdGwgLS1uby1ibG9jayBzdGFydCBudm1mLWNv
bm5lY3RALS1kZXZpY2U9JGVudntOVk1FX0NUTFJfTkFNRX1cdC0tdHJhbnNwb3J0PSRlbnZ7TlZN
RV9UUlRZUEV9XHQtLXRyYWRkcj0kZW52e05WTUVfVFJBRERSfVx0LS10cnN2Y2lkPSRlbnZ7TlZN
RV9UUlNWQ0lEfVx0LS1ob3N0LXRyYWRkcj0kZW52e05WTUVfSE9TVF9UUkFERFJ9LnNlcnZpY2Ui
Cj4gKwo+ICsjIG52bWUtZmMgdHJhbnNwb3J0IGdlbmVyYXRlZCBldmVudHMgKG9sZC1zdHlsZSBm
b3IgY29tcGF0aWJpbGl0eSkKPiArQUNUSU9OPT0iY2hhbmdlIiwgU1VCU1lTVEVNPT0iZmMiLCBF
TlZ7RkNfRVZFTlR9PT0ibnZtZWRpc2NvdmVyeSIsIFwKPiArICBFTlZ7TlZNRUZDX0hPU1RfVFJB
RERSfT09IioiLCAgRU5We05WTUVGQ19UUkFERFJ9PT0iKiIsIFwKPiArICBSVU4rPSIvdXNyL2Jp
bi9zeXN0ZW1jdGwgLS1uby1ibG9jayBzdGFydCBudm1mLWNvbm5lY3RALS1kZXZpY2U9bm9uZVx0
LS10cmFuc3BvcnQ9ZmNcdC0tdHJhZGRyPSRlbnZ7TlZNRUZDX1RSQUREUn1cdC0tdHJzdmNpZD1u
b25lXHQtLWhvc3QtdHJhZGRyPSRlbnZ7TlZNRUZDX0hPU1RfVFJBRERSfS5zZXJ2aWNlIgo+CgpJ
IGFzc3VtZSwgdGhhdCB3ZSBzaG91bGQgYmUgYWRkaW5nIC0tcXVpZXQgdG8gdGhlIGFib3ZlIGxp
bmVzLsKgIE5vIG5lZWQgCnRvIGdldCBpdCBmcm9tIHRoZSBldmVudC7CoCBBZ3JlZSA/CgpBbmQg
d2Ugd291bGQgbm90IGFkZCAtLXBlcnNpc3RlbnQuwqDCoCBXaGljaCBtYWtlcyBtZSBhc3N1bWUg
LS1wZXJzaXN0ZW50IAp3b3VsZCBiZSBsZWZ0IHRvIG1hbnVhbC9zY3JpcHRlZCBjYWxscyBvciBw
b3NzaWJseSBwdWxsZWQgaW4gYnkgdGhlIAoiZGVmYXVsdHMiIGZpbGUgd2Ugd2VyZSBkaXNjdXNz
aW5nLsKgwqDCoCBTbywgdGhlIGxpbnV4IHBvbGljeSBpcyBvdXIgCmRlZmF1bHQgZGlzY292ZXJ5
IGNvbnRyb2xsZXIgaXMgbm9uLXBlcnNpc3RlbnQgYW5kIHJlcXVpcmVzIGFkbWluIAphY3Rpb25z
IHRvIGVuYWJsZSB0aGUgcGVyc2lzdGVudCBvcHRpb24gLSBhcyBvcHBvc2VkIHRvIC0gbG9va2lu
ZyBhdCAKSWRlbnRpZnlDb250cm9sbGVyOktBUyB0byBkZWNpZGUgaWYgS0FUTyBpcyBzdXBwb3J0
ZWQsIGFuZCBpZiBzbywgbWFrZSAKdGhlIGNvbm5lY3Rpb24gcGVyc2lzdGVudCA/CgotLSBqYW1l
cwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
