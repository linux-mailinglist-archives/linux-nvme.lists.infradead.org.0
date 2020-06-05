Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E761EF29A
	for <lists+linux-nvme@lfdr.de>; Fri,  5 Jun 2020 10:01:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jPE3TkZh5mdv5D3RYWeKU7RxxASzeCEkaBZRAfIhqcs=; b=sNdI0GSfc2a+9vit+bmryeT32
	3ZQOJS8GkyTqsuKEpSaglvINvJWmwup5iaCmJuwvZaMQxQm+AKC4FmCUt1bI+KnfhsZg+giCwEvrb
	jOvvYBWH/jivKN/bHKgNN0cmz8QGgr7qiIHiXGDd7krZBI4hWQF9RFwYSDOyWTyuYkhEWbUaw30Vl
	sFZzdDB1QdOL/Tod6HE+vW/Bd1RZUoC2nhqrozTf99FkZU6GwtJRlvavPFtb1qo0jkUe6TtOBpydI
	TELl9jtNPh7uz15hBin8hZTZTij37bLqB8W2AwXwVHc1/QhatWfzWTPCqJtmOp9lvZ5zexmnB2AE5
	ikc5qPrJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh7HY-000058-1P; Fri, 05 Jun 2020 08:00:52 +0000
Received: from mail-pg1-f195.google.com ([209.85.215.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh7HT-0008WH-Vx
 for linux-nvme@lists.infradead.org; Fri, 05 Jun 2020 08:00:49 +0000
Received: by mail-pg1-f195.google.com with SMTP id 185so4754528pgb.10
 for <linux-nvme@lists.infradead.org>; Fri, 05 Jun 2020 01:00:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=cOzVzAEnX0bbxk6Y5zXaW6OHh9q7DAq3Jbs0QGbJJQo=;
 b=VcyWQ7GdrZyHCMHqR1XkbYyBtC/GyxcUAefjCo3ql5R4U601Cg39s2mVPHDkjMX0ou
 f3JrNYuIFVQ/qxyAU1inj0QCzU5y2BqWNd05xn4r9vEm3PDJgDvG7umsENuIyG8AJcwQ
 noix098ZfgQgFTf+USkVvyb/rPhH8bUw2w883ZHX8US2D99aV00ApYMDTblxXO/J4+NJ
 l29ljmTCXlv5dQXyxUp1Xl6eFNvaK1SZeU/5ZRUAvNjt69r+Ag6e3m925VjGmyA5zxvE
 EEgyBE0PyPe5v7YN/9ZncSE/yKlYkKWTWVvKs8Kgdau+5VIj2W3c5fEFJDu52ji/6hm9
 zR7A==
X-Gm-Message-State: AOAM531vgQA6Grw8FUN0UO68Xjysd+EPSQZ2KW5vdi+2XJOTLIO6/wx2
 0B40b/JkYkj4JhFcjBuwXls=
X-Google-Smtp-Source: ABdhPJyDFvnlcPqnVso+plLsNzkqKtkDy8qcYFLzNyC1GTEBFC8QvS4iTBAfcVyrQ9n0vQgP1dFJkQ==
X-Received: by 2002:aa7:9a5d:: with SMTP id x29mr8107072pfj.65.1591344040004; 
 Fri, 05 Jun 2020 01:00:40 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:29e8:cf62:7c9b:35c2?
 ([2601:647:4802:9070:29e8:cf62:7c9b:35c2])
 by smtp.gmail.com with ESMTPSA id j16sm6319823pfa.179.2020.06.05.01.00.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 05 Jun 2020 01:00:38 -0700 (PDT)
Subject: Re: [PATCH 1/5] nvme: introduce nvme-types header file
To: Max Gurtovoy <maxg@mellanox.com>, linux-nvme@lists.infradead.org,
 kbusch@kernel.org, hch@lst.de, james.smart@broadcom.com,
 chaitanya.kulkarni@wdc.com
References: <20200602131546.51903-1-maxg@mellanox.com>
 <20200602131546.51903-2-maxg@mellanox.com>
 <fe6b0f20-6fc9-9e77-b943-6f122bed9870@grimberg.me>
 <328aa2cb-776d-76b7-61b4-89fc0af5473c@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <9ba5fbf0-e457-73be-cd30-dc0dd8f095d1@grimberg.me>
Date: Fri, 5 Jun 2020 01:00:36 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <328aa2cb-776d-76b7-61b4-89fc0af5473c@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_010048_027535_E2877B31 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: israelr@mellanox.com, nitzanc@mellanox.com, oren@mellanox.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cj4+IFdoeSBkb2VzIHRoaXMgbmVlZCBhIGxvb3A/Cj4+Cj4+IG1heWJlIGp1c3Q6Cj4+IMKgwqDC
oMKgcmV0dXJuICh0eXBlIDwgQVJSQVlfU0laRShudm1lX3RyYW5zcG9ydCkgJiYgbnZtZV90cmFu
c3BvcnRbdHlwZV0pIAo+PiA/IG52bWVfdHJhbnNwb3J0W2ldLm5hbWUgOiAiaW52YWxpZCI7Cj4+
Cj4+IFNhbWUgZm9yIHRoZSByZXN0Li4uIAo+IAo+IEl0IHdvbid0IHdvcmsgc2luY2UgaSAhPSB0
eXBlLgoKWWVhLCB3b3VsZCBiZSBuaWNlIHRvIGZpeCBpdCBzbyB3ZSBkb24ndCBuZWVkIHRoZSBs
b29wLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtbnZtZSBtYWlsaW5nIGxpc3QKbGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
