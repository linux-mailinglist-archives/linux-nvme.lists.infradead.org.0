Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 176CF190208
	for <lists+linux-nvme@lfdr.de>; Tue, 24 Mar 2020 00:41:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DCwjAZAx8xXuJOlAJdLolaDYUwWSvpR5NhC5mXyR63A=; b=TA75XgOwwndaN50BwdBHKmgrD
	Kw8F+HdZcrM62dFUFo2LsSbMCzjnjN8/tcLiQXlzjh5itHo/f7PVKqg4LdVJ6KZ03/OiZ6/I0RONx
	q0TtIjBWJMZiS0gLaScLu9NQWpxVT4ZhOcoMw+gHZxMfmWehySQTSdzfoQfoKypOL6F1GAtwRqgO2
	NIuGT38xBdwoj04QmgcmGCbVluwsLwyIbOKyoqB7wo45xIUTsfeSRwDnln/916egbtB1zEUIPmgwa
	w1xIEFrdR4sPr1pOFjyyZ1yfMQen0rZ8jCLwnaAD61U+hQAz2euQ/KLMQA1CkMDnPz+j/YVDB0/QQ
	7jpH8t6ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGWhE-0001DR-2m; Mon, 23 Mar 2020 23:41:28 +0000
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGWhA-0001D5-F0
 for linux-nvme@lists.infradead.org; Mon, 23 Mar 2020 23:41:25 +0000
Received: by mail-wr1-f66.google.com with SMTP id m17so10370229wrw.11
 for <linux-nvme@lists.infradead.org>; Mon, 23 Mar 2020 16:41:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=32BZSUaVYL724YA1V1dRdJhvHpCxKqbW8yfHiJsTkHs=;
 b=pFLmW/NbAVcoG+1o/fEf2VyhNpcaKEe2+Kd2ont8SVo9AmBqTkvRr3Fes6aLVjpdPH
 JiliW4vqlxY33FjhLOoUy4JEvkspgbw7Y8oNP+uLEXljcIPZqjH00ARkiGPrMgdFoI3U
 dFrY967puJCB2Dhl9hcNYQgnC04piYpTMOgaajrS8Ti5MrTfklONaoxmSFUTIqnEdGoW
 yXfVftGDrrOjifcMGOmlUNYN8HFgnF4RDbKkMeBHBDMJMac6HSwPqasdK6DKHqkPSyEf
 DQE4AaGY6RwKea3q1jpm6zUxFd0nHwpNWQ1J/nhOiQ7QfFdurzBPJ6EHyIZicjHp3zP/
 8WAA==
X-Gm-Message-State: ANhLgQ3MYtwAQplXiVxkT9EUxWX3T53TvDhkO5TS8iouN/cQFPT5pn3s
 dwC+27rTzKe+QNBaeiRUex4UzOJR
X-Google-Smtp-Source: ADFU+vsr+RMTUUq1j5cv4B1EeWZ89WESHpD3W/vpwA55SUcgsPXM2qqbhcSl227tT3F5jz1hYuBGcg==
X-Received: by 2002:a5d:468c:: with SMTP id u12mr18447467wrq.394.1585006882981; 
 Mon, 23 Mar 2020 16:41:22 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:45a4:15de:f2dc:1149?
 ([2601:647:4802:9070:45a4:15de:f2dc:1149])
 by smtp.gmail.com with ESMTPSA id i12sm26479188wro.46.2020.03.23.16.41.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 23 Mar 2020 16:41:22 -0700 (PDT)
Subject: Re: [PATCH] nvme-tcp: don't poll a non-live queue
To: Keith Busch <kbusch@kernel.org>
References: <20200323221315.16120-1-sagi@grimberg.me>
 <20200323233916.GA15091@redsun51.ssa.fujisawa.hgst.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <8b0df33d-91b1-afa5-4c83-bed3842f19fe@grimberg.me>
Date: Mon, 23 Mar 2020 16:41:18 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Firefox/60.0 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200323233916.GA15091@redsun51.ssa.fujisawa.hgst.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_164124_504094_E19C4019 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
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
Cc: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Mark Wunderlich <mark.wunderlich@intel.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> Did I miss a patch recently? I couldn't find the "NVME_TCP_Q_POLLING"
> flag in any tree, so this patch doesn't apply as-is.

You are correct, I sent a patch that does not apply. Thanks for letting
me know, I'll send a v2.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
