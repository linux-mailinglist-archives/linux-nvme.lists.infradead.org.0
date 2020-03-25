Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42FFC19215E
	for <lists+linux-nvme@lfdr.de>; Wed, 25 Mar 2020 07:54:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z1fMvao11i+d0UZrbIxXcd2/3fEWA/mH8uzwOCutGXo=; b=jK0BOjrFJTh/lJuTggiC2uMYi
	GmFA0tVFEBWFS7fE7jZ1lU84dwk370WAFhjtk7XdrJzOpPIQOCuTM8nMgMjbIQi/aQ4gA1m1OP5Vz
	9HjbaBmi5w2ZiypBmJMFn1DN68S7GrjxdIpsVxc3lQPtrUFovJC5Yo/Ae7x/jBr1+5yaBPG+oenPS
	6oQ/Bb1vwL6a3fB8N84EE9x6AWx3lFRFrCeoK1rv5pAoPcNIcU1G7SUaIUL/EC6GgIq9rV//AlilG
	O70OHG0LaZcYDiSfH/SS893hZBWiBrv1zGICx9Ppn6sB1uNYW+uwtfqpaXWEZLLLMwSRZWRfIBi2V
	MwMRDhxdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGzvv-0007fk-Ck; Wed, 25 Mar 2020 06:54:35 +0000
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGzvq-0007et-DQ
 for linux-nvme@lists.infradead.org; Wed, 25 Mar 2020 06:54:31 +0000
Received: by mail-pf1-f193.google.com with SMTP id z65so578632pfz.8
 for <linux-nvme@lists.infradead.org>; Tue, 24 Mar 2020 23:54:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=ICrXq7zgt0oTkGGAS2XXUobz0BS4iDgc7dzOaH6Qzm1oQR1GPeQywEQxt2nzzFrw58
 EQvEzvDUDGsC4/7u+Fka9d6hHFdhdanpEtN9eKXVUSDnyMtIlumZF2iwn2TWql455twV
 QjyAkQDeawjiLNcEXf9BDCI9N1BKvzom0lQRXKQMifpKDgDhmH7FieZP0zACvSPEjgkg
 vQjsqhCL6hnd83WXZmY+ZLB3QJs3WUH9WnaL0qPmXvK8UXyNPY+CdEPNGv5AkWSp8to/
 I1gG2E0r5a69no0ThJU2FWnFnPSl1D0J+gVS5xQaflnQmzgmwLSuXSd8OpvZsfsGPnBy
 5QhQ==
X-Gm-Message-State: ANhLgQ1PKx7L/k2GzAtJAezLzVSnStCqgs86F8KDiigIhWKXlrEBBrsI
 Z18PvLnyq170k38FNzU368k6/iT7
X-Google-Smtp-Source: ADFU+vtqAA+ZcKesRR85r91znskVBcG7r9sIy6O4bu/R57o2CmhXpR57NnKSl/coUPcrm8LEMkJKOQ==
X-Received: by 2002:a62:1a03:: with SMTP id a3mr1852118pfa.171.1585119268930; 
 Tue, 24 Mar 2020 23:54:28 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:2c87:e6f8:1c11:1d73?
 ([2601:647:4802:9070:2c87:e6f8:1c11:1d73])
 by smtp.gmail.com with ESMTPSA id p22sm6705140pgn.73.2020.03.24.23.54.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 24 Mar 2020 23:54:28 -0700 (PDT)
Subject: Re: [PATCH] nvme: Fix NVME_IOCTL_ADMIN_CMD compat address handling.
To: Nick Bowler <nbowler@draconx.ca>, linux-nvme@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20200325002847.2140-1-nbowler@draconx.ca>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <3eed9434-d1af-b0d9-e972-ddd393d1ab4b@grimberg.me>
Date: Tue, 24 Mar 2020 23:54:26 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Firefox/60.0 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200325002847.2140-1-nbowler@draconx.ca>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_235430_454495_3F9E9322 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
