Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19BA91F1DEA
	for <lists+linux-nvme@lfdr.de>; Mon,  8 Jun 2020 18:57:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z1fMvao11i+d0UZrbIxXcd2/3fEWA/mH8uzwOCutGXo=; b=sRRb9JFs3eamSE8+ULZ6cdmkE
	PwRAk2s6LELZn3DGZIdGrFskmJldtRHOCFUR0uhZWl+86P2FqhA1D0s0PzBXw+X4RzLHxmlcXT8ve
	YPri869NudCOhg7QgVMfz+bpVrUVoLEitTesVUH8GHVKiqCiNe4Lw+oc0ez5KIlvXwgc0MuHczO/H
	1xMUqogbgOSQboGoCmWA87/m3jsMrCtagNTyuSeTJfek0SIDHxJa9JIqeDcJ04iddM9zaS/OLYPEY
	hj3tOD+ER+B/1/bGAe0mb8dshFcl21t+EAptazIk1lAzK42oM/tM+Qb1QEX2jp5QyBhi70XcBO/ir
	9mpd38jAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiL5A-0003d4-G6; Mon, 08 Jun 2020 16:57:08 +0000
Received: from mail-pf1-f180.google.com ([209.85.210.180])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiL51-0003aM-7g
 for linux-nvme@lists.infradead.org; Mon, 08 Jun 2020 16:57:00 +0000
Received: by mail-pf1-f180.google.com with SMTP id 10so2928209pfx.8
 for <linux-nvme@lists.infradead.org>; Mon, 08 Jun 2020 09:56:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=BNIWw+rXUnNu9dfbywQOqdpWEa2aJQSUTCUqN1iDCYwQ0U7VVg9bO52Ls4lBg9E9gK
 +oB6H04B4b6rsrj2G1krT6kUL4JIHSYYyXQ4+TSq2FRQX1mEyxC5BWX3GcNyicwRhAe1
 oIsJh6j57NOjRghTmZ1ThwBC0pZUP2QTACJTkhVrKe0+vW7PPwk8G5dBuTwFtfE40ns5
 uLC0tnG4SW4qtVJLvFpNYdSycPQB4LAD79rSKdADfJ9rzgah4Jo1kLnffmcf4/0R2K9H
 MPXz+w0jN8N0KqX/nud9KZwLhQjCnGtw+PFoJheCrs2zEUjGxDvbDu5/Z9yjLBh5fli/
 b+fg==
X-Gm-Message-State: AOAM530MS4eP1IwmwFH4XOjSccVgZO4Zi4z4duTAr0S9j1qWmN1JV28H
 wVS1uijlNH3IP+cY0uWnq/9epHD8RXA=
X-Google-Smtp-Source: ABdhPJx6gAn0h6aqJ7jzMSVfvojObTsA3nOi6NlanvrHc2aqJe1+1r1N8ymfjUmfJJGj4CxfXHXdMw==
X-Received: by 2002:a62:1512:: with SMTP id 18mr22947195pfv.34.1591635418333; 
 Mon, 08 Jun 2020 09:56:58 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:5183:321c:38f8:ee16?
 ([2601:647:4802:9070:5183:321c:38f8:ee16])
 by smtp.gmail.com with ESMTPSA id 77sm7781360pfu.139.2020.06.08.09.56.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 08 Jun 2020 09:56:57 -0700 (PDT)
Subject: Re: [PATCH 2/2] nvme-pci: remove empty line following
 nvme_should_reset()
To: Dongli Zhang <dongli.zhang@oracle.com>, linux-nvme@lists.infradead.org
References: <20200608162002.17017-1-dongli.zhang@oracle.com>
 <20200608162002.17017-3-dongli.zhang@oracle.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <991d5bf7-f3a1-6b6b-08aa-fff9ddd7a79b@grimberg.me>
Date: Mon, 8 Jun 2020 09:56:56 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200608162002.17017-3-dongli.zhang@oracle.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_095659_285288_712B6900 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.180 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.180 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: kbusch@kernel.org, axboe@fb.com, linux-kernel@vger.kernel.org,
 chaitanya.kulkarni@wdc.com, hch@lst.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
