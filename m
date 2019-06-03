Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6234033BCC
	for <lists+linux-nvme@lfdr.de>; Tue,  4 Jun 2019 01:14:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OcQ1upZ9pTTnmzXOa75axcZn9RC5zeuZSgQrHvc9FbM=; b=ix1vSPEYAJxk29y6zQHh2MMHY
	FrRzzgujDwZe1uEMrK6sGw2Jr5LmsVh8znFCo8aTCv1y3YhHGvYrjVj2+uEiPrzG9UfXrXp3uDPGH
	idlPNhFuz6cvRFQ4hnd80vSAPGwGU+a0LzAospypfoyJ6fYLJDoXJb+uGpxLOpDYzBDMB3VWz1W2l
	F1GzuSnoWrOKDgD/ezzE3J/si6kYxevAfNGeZsl7s+qlE11wlAA8cJ9pw7vJo4l2kCP4Fm9h8+K0m
	PquQ+ObXBOBIxZ/epVnXMlGL13c5MIEryoH7T94tOxObP3tSGvq6iWs/bsFOr6bf+hXtvVFzkPWnp
	oO204b8CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXwAE-000516-FS; Mon, 03 Jun 2019 23:14:50 +0000
Received: from mail-qk1-f196.google.com ([209.85.222.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXwA8-00050b-Uz
 for linux-nvme@lists.infradead.org; Mon, 03 Jun 2019 23:14:46 +0000
Received: by mail-qk1-f196.google.com with SMTP id c70so1616897qkg.7
 for <linux-nvme@lists.infradead.org>; Mon, 03 Jun 2019 16:14:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=lptOnPXu8v81O+8mPC2N1sTI3izaFp0ye7DCP3nlzS4=;
 b=PwdtXm+3j4R01t2Q7/e+jor20eapWyKmcE5cCGO4pciWnJO8Ab8XY1iu6rrbJ75EOu
 nNbpJzpMMGdMGRdVuwpnxJdmUe7EO0q/texwCcO9VH+pMF7rcBOMdk+/LWifp5XG2YKp
 71RzUzlY6fbXArZX36teIG3Na5zbLusOiOuCEiGXCSHdz+FBWXIZQnCoxg2PxBQfKdw8
 XLBBPT4b4qFxOcX/m659kXE01zrZGkZCLNcp+u6MZQsGmCd70jo7r3XkzkgET7xVdXZ2
 +PNEdL/jx4+NQeTQf7UlgJNKareEmRsEqB3JnAy2aQyNuDtCb7wWy93FW4JvMorlO9xu
 C+YA==
X-Gm-Message-State: APjAAAW3YdpF3azb1D5CexB1R5dtimLxu6GfhPfoVeUKNPbDgV6hhGwk
 eN2c/P1RNqU0Xonlw9sYkq3FoXqr
X-Google-Smtp-Source: APXvYqzGlTqqFva1Lruhc0mrHEM4ltW0cS6NTg3MJOAGXsOBI7HEU3tHW4k1VPEtyqrJf7MCbkZmgA==
X-Received: by 2002:a37:e10e:: with SMTP id c14mr5588452qkm.54.1559603683924; 
 Mon, 03 Jun 2019 16:14:43 -0700 (PDT)
Received: from [172.29.0.86] ([52.119.64.114])
 by smtp.gmail.com with ESMTPSA id z64sm7883801qke.35.2019.06.03.16.14.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 16:14:43 -0700 (PDT)
Subject: Re: [PATCH] nvme: Fix u32 overflow in the number of namespace list
 calculation
To: Roland Dreier <roland@purestorage.com>, Jaesoo Lee <jalee@purestorage.com>
References: <1559601877-13614-1-git-send-email-jalee@purestorage.com>
 <CAJX3CthjFcMHK--n4TPjjJ6LCTx-FbnS2tBLx0kmuBMtW04xow@mail.gmail.com>
 <CAL1RGDUUMRWeLA6OtfAvUYuHVRO5Lc0A9xiWs6fc4iFfiGiHDw@mail.gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <1619965f-3d7b-0a17-08ef-807d17ff1f6d@grimberg.me>
Date: Mon, 3 Jun 2019 16:14:42 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAL1RGDUUMRWeLA6OtfAvUYuHVRO5Lc0A9xiWs6fc4iFfiGiHDw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_161445_523726_A8E6056B 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: -0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.196 listed in list.dnswl.org]
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.196 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Keith Busch <keith.busch@intel.com>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>,
 Linux NVMe Mailinglist <linux-nvme@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> -       unsigned i, j, nsid, prev = 0, num_lists = DIV_ROUND_UP(nn, 1024);
>> +       unsigned i, j, nsid, prev = 0, num_lists = DIV_ROUND_UP((u64)nn, 1024);
> 
> This needs to be DIV64_U64_ROUND_UP(nn, 1024) to avoid issues on 32-bit kernels.

Agreed.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
