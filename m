Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4FCBB9669
	for <lists+linux-nvme@lfdr.de>; Fri, 20 Sep 2019 19:16:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=GO/slazEr21rwMgN+4Mxlzgmu
	OkgFAphFtRpLJBALOK7BHNXStYkLcirjMocVDVKoI+cKpxRMiSqUSfryhxMy4JkXAkXhLd3mWofBJ
	FAx5wlMUMaoY1ByNG3HI1+b+SAr+A16w3JqgOIUOghECFzFykhu+H1VmhMV0uLPndIFoz3qWI1eAG
	qxIKkU/H9/ZwNXF1S+mkl2miXqbAERIBVrKiao1d4OgcK4aHhxjkKDtsgzpngD3x20kw3+ryy2oY7
	ndJwbANYkqlSXj+0dIzQx3OoC1bD6Jl5gyOm6fQWBvLcrtdpfFm4EH/71SA8qwC+lIPMd45CwWYN8
	Lv1uemaTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBMWX-0002LQ-Cw; Fri, 20 Sep 2019 17:16:49 +0000
Received: from mail-wr1-f50.google.com ([209.85.221.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBMWS-0002Kv-QH
 for linux-nvme@lists.infradead.org; Fri, 20 Sep 2019 17:16:46 +0000
Received: by mail-wr1-f50.google.com with SMTP id l11so7531727wrx.5
 for <linux-nvme@lists.infradead.org>; Fri, 20 Sep 2019 10:16:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=Xl1/n1J9IcV1qMOKmxAI6Ct0+3Ok9Sz/oOjxNR6W8/tDMpcrB6htNFMi4lK/l+LJDM
 x1HOhVj1qY6LIs0XtJ8iXF+SrXjsSUcbJyKVGmOzpXs7pXPmlnvquIf9ZUOivE+Wto68
 dyDMVEf2ME3yeOKg79bXAElOBGJO0mJ9B93U1B4D8cTbER+GF+8Ue1h0c2tFYkzqwaCW
 /q6WSXlcBrXumAJ+urdiT3OLM18FPf7K+Z02ocIf4+jqw9w8292xB1mLbd8WP1GFbMW4
 nU4NlDetHZdMwhKspqLki6O4Kcd3+Si/EIO/CmZ06AXS8fRlXJTzM7jUL+R1soEFJA/A
 PcBA==
X-Gm-Message-State: APjAAAUPF0OOae1hvYGv2DmkywZUX5CBKQ0oU51AkOF4cFbTuUsylqZ1
 Bh42l2EdYD7ZngPpz3A7NuA=
X-Google-Smtp-Source: APXvYqyf5hsBmVZl8KyNk0AoHhxM58sFxSW4/SXuvFfViEofHEzDhydraLW2wW2RGvRT70u+pbjuVw==
X-Received: by 2002:a5d:4a52:: with SMTP id v18mr357655wrs.368.1568999803315; 
 Fri, 20 Sep 2019 10:16:43 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id g4sm2959394wrw.9.2019.09.20.10.16.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 20 Sep 2019 10:16:42 -0700 (PDT)
Subject: Re: [PATCH 1/1] nvme-rdma: Fix max_hw_sectors calculation
To: Max Gurtovoy <maxg@mellanox.com>, linux-nvme@lists.infradead.org,
 hch@lst.de
References: <1568815936-6257-1-git-send-email-maxg@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <63b23b4a-b010-d626-4154-e9879845b766@grimberg.me>
Date: Fri, 20 Sep 2019 10:16:40 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1568815936-6257-1-git-send-email-maxg@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_101644_850213_766865C8 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.50 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.50 listed in list.dnswl.org]
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
Cc: keith.busch@intel.com, shlomin@mellanox.com, israelr@mellanox.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
