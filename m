Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C8D6176182
	for <lists+linux-nvme@lfdr.de>; Mon,  2 Mar 2020 18:47:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z1fMvao11i+d0UZrbIxXcd2/3fEWA/mH8uzwOCutGXo=; b=n6Me9mNpsqU42EQXnq8OlHDNL
	qtv9oSxjSdbbGjDDPTTUZFvVVBx0myuS5uYrIcFLdeHNom8MYHPYbVDy4DNuyH9RZpfDYDlTRqCY6
	Ej7frMhH8PbHPKFiAyb3s2NHrkyEi50wV+fzuZ5uWu14Npl0Gk4vNFC6uDRZTVO7XjOomI4JZDqSg
	F+L6pu+pok3HfSmiEOuXgNXyNwPNdfvjKFSgsWpD5NHfvO3KzP/WM/+N9K67nsJ9UNj9Pt4QWzn3G
	TBnCg3PbMs2rl4LtaZxvAIvdoRGbXn0OcoZRXzXIkyMa9Zbt9kPKQ7pfqChd6cwg2Wd5VNXz07dte
	j4WuoPcOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8p9g-0002Di-KW; Mon, 02 Mar 2020 17:47:00 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8p9c-0002DM-Oz
 for linux-nvme@lists.infradead.org; Mon, 02 Mar 2020 17:46:57 +0000
Received: by mail-ot1-f68.google.com with SMTP id x97so86917ota.6
 for <linux-nvme@lists.infradead.org>; Mon, 02 Mar 2020 09:46:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=i06PeDpf32BYz5HtNOG+XdGkA+AHjhqTv9aWuAKQWIXKGRUvtFJPLk0lZR+JZyn/Rr
 zbGTD5WJyy571H8oDZdZK7Y5aP7J30A1j5p/QBUgZ/qujTIkCbCEBa7MrND4CyzncaQz
 8k1mPKh4g0afHcOy7+MyOF97CiD/OHN3iPpw8eek++8/QKuOFLMsZpw9JatwsRRqxj5i
 dPqWU2bB8BZoACiXfg/zuajDq/o+mnJhwgPh+OVEi5PKIX/cT6sKiZFQzkeoKSNgn08e
 WvJeH//kJNE7DnfuOqMKIgwvfgRR/PALpajIdTt9j2gEfl9c2pwygGz0aSjRNZrzMTBC
 HFLA==
X-Gm-Message-State: ANhLgQ1PgWh5JQ/5nHqACyPLDgcVAKm6Ru+wudlK0QrlwR45kgc++Dsp
 YEBqrN2eINpK6E/rPJcc7c0=
X-Google-Smtp-Source: ADFU+vs+4P7x9C+1xgKFkNL2G9WYke1HRmktrcTie2hYiQ5RLGtZXCTXiDgRVVmL2AJgl99XI//5vQ==
X-Received: by 2002:a9d:a16:: with SMTP id 22mr239324otg.31.1583171215362;
 Mon, 02 Mar 2020 09:46:55 -0800 (PST)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id v10sm6516476oic.32.2020.03.02.09.46.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 02 Mar 2020 09:46:54 -0800 (PST)
Subject: Re: [PATCH] nvme: Check for readiness more quickly, to speed up boot
 time
To: Josh Triplett <josh@joshtriplett.org>, Keith Busch <kbusch@kernel.org>,
 Jens Axboe <axboe@fb.com>, Christoph Hellwig <hch@lst.de>
References: <20200229025228.GA203607@localhost>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <f97877d5-2cb5-426f-3117-0b439b00b88c@grimberg.me>
Date: Mon, 2 Mar 2020 09:46:53 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200229025228.GA203607@localhost>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_094656_812156_A8830469 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
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
Cc: linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
