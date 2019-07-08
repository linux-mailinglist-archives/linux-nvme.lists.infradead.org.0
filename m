Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F05661C7A
	for <lists+linux-nvme@lfdr.de>; Mon,  8 Jul 2019 11:37:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=r+PP5QIiNUGjsGEW89PtFPike9wfU1V2Ygk7prZnjbs=; b=B4cyQx5lZNfJqQpt8mYGCzS4X
	VnyMG2iUBZluzg+CSJIhtaWW3rPiEE4BY7llY+ENFsHfvk36I8GmPRYyBopb9GEIiLMpnv1F3DCiL
	IPZ10U0IB+i9yxulU3ghP7i6+5u8KkO3ocwKlIb26t5tZI/J9zPQAHseaHrze1MIup25JgCha7RiN
	uf44BQxdI5fBJsF4RKb7m0ev8uyvd9GYRZOIy8+mM3vXHmYxRlC/HzDrKAFbaOryTr5oiTKxqNFKO
	6DQ+HLn5yUw5wBxSYkuusw0QqxWA1Wi04LtiqRUZ308lEEryBFAA+oP7lOhB09tcfhhoF453nzAZ0
	2alHHkCTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkQ4u-0001rF-Lv; Mon, 08 Jul 2019 09:36:56 +0000
Received: from mail-pf1-f182.google.com ([209.85.210.182])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkQ4V-0001kF-U5
 for linux-nvme@lists.infradead.org; Mon, 08 Jul 2019 09:36:34 +0000
Received: by mail-pf1-f182.google.com with SMTP id g2so2522059pfq.0
 for <linux-nvme@lists.infradead.org>; Mon, 08 Jul 2019 02:36:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=C2+Hp5jryOc+p2N4i0tz04wSR2KRrbcvB+41z3seslU=;
 b=nfcscRHaD9IvJxkZrBf28YvrR3gl86EY3LjQHf6yqpvENoyuusBGpUEKaYalgX7zaC
 hwGzQZCF4EfTAJsTg66ZQJrjRaIkfgJJ8z3HwRVR3Y3DZ6blPFv/JXTCCyKEyyachgik
 T1sJkGELbYJZdB6xxunqM5oNmtdQsxvueATdUIPueuvwRuvNJV8VT5vl6KdNtynprMq3
 eLc22rOC70KNWI0dg3xvVJMspf7cDD+XveLd07VU7Y1xl1vSY3Ky2TK5Vp/f2W+SvbUC
 IQ0aotg8Tpwb0UGBFYXsjK3ZUIfWphIUVSVdtX2RtWoxTf4g9+U3IwBnL5ZnYhBWN/z7
 xLQw==
X-Gm-Message-State: APjAAAU+hhONEKh326yYPB33MUBzIuCFaJLmFlG8y1LEY3nIHFWSxqrT
 Fbh8vS+tDzfqg8cFlC9u+652IuNK
X-Google-Smtp-Source: APXvYqzCLTD6+cxLIGa/08zrPb7FZKG/71pgwYCeEv2h0zcDB4czlp6+qcSsfIrIep0ilUmhQqOOdw==
X-Received: by 2002:a63:e356:: with SMTP id o22mr22398114pgj.150.1562578590070; 
 Mon, 08 Jul 2019 02:36:30 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:7538:126a:4b71:8c7c?
 ([2601:647:4800:973f:7538:126a:4b71:8c7c])
 by smtp.gmail.com with ESMTPSA id m69sm16708364pga.11.2019.07.08.02.36.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 08 Jul 2019 02:36:29 -0700 (PDT)
Subject: Re: [RFC] nvme-tcp: Use protocol specific operations while reading
 socket
To: Potnuri Bharat Teja <bharat@chelsio.com>
References: <20190704110935.1228-1-bharat@chelsio.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <04b2f7d6-25f4-ef69-b1da-00e9bb13ac16@grimberg.me>
Date: Mon, 8 Jul 2019 02:36:28 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190704110935.1228-1-bharat@chelsio.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_023631_999708_79842983 
X-CRM114-Status: UNSURE (   9.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.182 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: werner@chelsio.com, nirranjan@chelsio.com, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Potnuri, this seems fine to me,

Acked-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
