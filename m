Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A3A6F054
	for <lists+linux-nvme@lfdr.de>; Sat, 20 Jul 2019 20:33:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mKg/1EuSGWzR9JFweRPylOLCMlQBKfU/EInDUa7Isek=; b=BbHkX2m2qawpGRi5tUMbBUZcK
	Np7MSIRoZJhrWF+AYPNTQjV832Sc5XwBbwuDP9AlJPXISKXu0KJyyL4khG7qDSDmlvyIctk/Krd9W
	UMyQME6G0hiwtKXHEVOUw2P2VhiFhOMTGQreDbs7qvZQC/PRaSAbhiu2YqBce/VoI3GnW38BHReVG
	pthDJNY+TOakrZAJT71dJqMHVxDVk58LlELDyv+I5uCLO9+4uAr7XhnvwB7VbTbYepWBx2hT0pYuW
	7BojM2uw+nhRtP6ywLKjqvUr14xjfPL9sEhX24rD/1MynimCSHYVHnAkWTQdzi74a58Eok9ahOglz
	nV42Mcexg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1houAc-0006Wz-PK; Sat, 20 Jul 2019 18:33:22 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1houAT-0006Wd-Hx
 for linux-nvme@lists.infradead.org; Sat, 20 Jul 2019 18:33:15 +0000
Received: by mail-pg1-x544.google.com with SMTP id u17so15821390pgi.6
 for <linux-nvme@lists.infradead.org>; Sat, 20 Jul 2019 11:33:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=ykC72XtoVNBILd7sg++hZbN5UDWHKXBhT94hJykXsI8=;
 b=CI4s7Fk8m/n7Ujf/VKS8cJzVfUnkwH4d9v/Oj/zwhGemCjIZeS7bKYzoV06M8sx613
 Dn5/TWqBuWnjSi1MfY0BSVodcnStW/v+C2HRTvvxzeo8jtCQBTvqhidgBnImcC0gcsMh
 vZta1Eqr812NtZlcbjDw5MhQSrjOLRLbfyPaM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=ykC72XtoVNBILd7sg++hZbN5UDWHKXBhT94hJykXsI8=;
 b=AFDn6RZ89ROHq3E8JdpfPYCz884mOCg4gdR1mZK2sjIh8b7m+5hTPjWn1fmuPmeaSy
 C8EYb8rYAHNEh2Sg9CgIOMqjB1cuZEzUKPBenGBo5gHMVnosal8miipcPx9YSktiNUPh
 KmrWtHYouBY8R2uJo/vKHzatpGD7PJPSJTNiLeP1lUAsYS65uD7XA6AlPQ5bk9+uzzvr
 VVKQSRuLWqgel7RjlEOsQ8bdoWnNGOqxfEOgDQ+CD4NK7lksRPG6MuBpJy8uvBibSYbe
 x1BlLYcNb1M/pUT8UkTpvIBTrGemY8/xfzdCMQermDXN9kFYDDOOXh5VL98ucKHVhk3t
 Zelw==
X-Gm-Message-State: APjAAAUZwOkB6jyl2Q6T3hKo4qf/ozn5xfvM0UYeSvEYQl4yF60fwA4O
 sueWwkl8M0DOfMH6C7KAUagzh74Toa93YG2mrFrt+Gd1OwLoF9oQjxN0+vKfuzkMV3oPffp9WLk
 8XZfsapcSwNqz1xmNePWJvMCR7Ny16+R1+w9Rl8WJjzbzkt+Xa0vDCJfmD6TUaHMGAYSaJQYAOA
 ghdnAblQ==
X-Google-Smtp-Source: APXvYqxN94MNM6pf60xB+4x/49ZzF7E15vDMGHOXr2pF7jdBLwBhcfGKdT3f6qj2Ny+h3aeY4XjXHg==
X-Received: by 2002:a63:b747:: with SMTP id w7mr8587505pgt.205.1563647590120; 
 Sat, 20 Jul 2019 11:33:10 -0700 (PDT)
Received: from [10.230.29.90] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id a6sm30994698pjs.31.2019.07.20.11.33.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 20 Jul 2019 11:33:09 -0700 (PDT)
Subject: Re: [PATCH v2 07/10] nvme-cli: Add routine to search for controller
 with specific attributes
To: Minwoo Im <minwoo.im.dev@gmail.com>, James Smart <jsmart2021@gmail.com>
References: <20190719225305.11397-1-jsmart2021@gmail.com>
 <20190719225305.11397-8-jsmart2021@gmail.com>
 <20190720082504.GG22395@minwoo-desktop>
From: James Smart <james.smart@broadcom.com>
Message-ID: <ca511e18-6141-2bbb-a5c6-ce6ad802c10a@broadcom.com>
Date: Sat, 20 Jul 2019 11:33:06 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190720082504.GG22395@minwoo-desktop>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_113313_660767_AADEACD2 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-nvme@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNy8yMC8yMDE5IDE6MjUgQU0sIE1pbndvbyBJbSB3cm90ZToKPiBKYW1lcywKPiBJdCBtaWdo
dCBiZSB0b28gbGF0ZSB0byBkaXNjdXNzIGFib3V0IHRoaXMgYXJndW1lbnQsIGJ1dCBkaWQgeW91
IGRlY2lkZWQKPiB0byBoYXZlIChzdHJ1Y3QgY29ubmVjdF9hcmdzKSBhcyBhIHBhcmFtZXRlciBm
b3IgdGhpcyBmdW5jdGlvbj8KPgo+IFNvcnJ5IGZvciBub3QgZ2l2aW5nIGFueSB0aG91Z2h0cyBv
biB0aGUgZm9sbG93aW5nIG1haWxbMV0sIGJ1dCBJIHdvdWxkCj4gcHJlZmVyIG5vdCBpbnRyb2R1
Y2luZyBhIG5ldyBkYXRhIHN0cnVjdHVyZSBmb3IgdGhpcyBiZWNhdXNlIGl0J3MganVzdCBhCj4g
YnlwYXNzIGFyZ3VtZW50IGZyb20gYSBwZXJzcGVjdGl2ZSBvZiBmaW5kX2N0cmxfd2l0aF9jb25u
ZXRhcmdzKCkuICBCdXQKPiBJZiB5b3UgdGhpbmsgaXQncyBva2F5IHRvIGdvIHdpdGgsIHRoZW4g
SSdtIGZpbmUgd2l0aCB0aGF0IHRvby4KPgo+IFsxXSBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9waXBlcm1haWwvbGludXgtbnZtZS8yMDE5LUp1bHkvMDI1NjQ2Lmh0bWwKPgo+IFRoYW5rcyEK
Ckl0J3MgbmV2ZXIgdG9vIGxhdGUuwqAgSSB0YWxrZWQgYnJpZWZseSB3aXRoIFNhZ2kgYmVmb3Jl
IHJlcG9zdGluZy4gSGUgCmhhZCBhIHJlcXVlc3QgZm9yIGEgZnV0dXJlIGl0ZW0gdGhhdCBsb29r
ZWQgbGlrZSBpdCBtYXkgYmUgYWJsZSB0byB1c2UgCnRoZSBzdHJ1Y3R1cmUuwqAgU28gSSBsZWZ0
IGl0IGFzIGlzLgoKLS0gamFtZXMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1udm1lCg==
