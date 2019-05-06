Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF99151C8
	for <lists+linux-nvme@lfdr.de>; Mon,  6 May 2019 18:38:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zV2wz+9vHodxx8zz+/ARTALd5hWqFUlNoMUw5EKAxVU=; b=E2lR7U66ZjDhTht5x78awcnyg
	YP0x2+PhIwsQ1YZaI3ssL6oapyjdU9tsaUMBzpCVO/ynOhHu5lu9IujBOuMRpTG5NxcoHJnE8B2Y8
	YNCV2DCKSN6Vfel+zIm6AVu7s5WHuIhrE0a7e1xDG7CWp0vQT87udjBCwpBbRh0qAI/w/BdcS/BGD
	hgtGMcSYaP4+sVLkCu7pwHGGmu8XOuMsBeNikVrlV7u6V2ihQfinKZhAjcJEpPJF7mmsciOrrYfjC
	B8tK12rBUOWajse+g0oR2tDzLdLNP7DnSJV/RHDvBr1E+TBFSDfSkfp74KphbonLKzCduKnsZLrc1
	05QKnCK2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNgdM-0004hT-PM; Mon, 06 May 2019 16:38:32 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNgdG-0004gm-VD
 for linux-nvme@lists.infradead.org; Mon, 06 May 2019 16:38:28 +0000
Received: by mail-pf1-x441.google.com with SMTP id z26so7058450pfg.6
 for <linux-nvme@lists.infradead.org>; Mon, 06 May 2019 09:38:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=W3tyqiwSrG5uqKuXmhCbfkfXOGDKRU1cvNSJPUYJVdE=;
 b=s6J8bnqd3KHv8WkEguYkHy0P4cACy9yLewGgNg80b5znbZztQxYrEOdKg4D3rkz5gV
 wenAXNSyTGF8hE7vwprQoTPXW+VsSyL4wPOH1nxFJS2/SZbsi+z4V6OkSqRGvkOLC6sh
 L4yPgY3Tt1nOMH7oSH+MaugxPmB/s+h0rjaGERR3CW/qTY7H9scJoW9kwscVv9bBfT8e
 1hWQ8UanYjyBEFa+CXmshzl/gQUh2yo1nWdLjKJDAvPYDCBl0urcPuzPU4p25KNuRT53
 UzqYIChfJIMDV1MHwJUfrv69GKcrPzSI+IqNbe1yNXxBKvnhfe4OtLGLMMxekvosCmV8
 07vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=W3tyqiwSrG5uqKuXmhCbfkfXOGDKRU1cvNSJPUYJVdE=;
 b=EWjlCuLuH9k+/yhGr3GkGSk2ayfEvr6VvRpOU70QUn2HasQJZoGtP400RjyKL5hBSq
 i7+f25mIfWGIcwmpwU0yCeN4lWOc2xIcxvbbmvAw4YRweuYb8MCwbkxEyj6KIwudf/qD
 kdZ+pA11fwIeIKnXPV6LrgdC5gZ3yr/nXLlsVEt/41HHfoaGCei6nb8t27QWXYUE3jA3
 bxEdmc9XXRhFdKpxhg79u3MY0c1kPfgYB8EyyKqVBWCxhkhCDrmswjS+0KOdDZHtd0zy
 AxQpb98hDzIWLsF7pwNP4OinvAPj+uXpQQGIZyB82uakWlAppq4ixLL6Nij+D4EMaHnk
 2P5g==
X-Gm-Message-State: APjAAAUC6g8N2DkaqJNmS00Gx9BFt5Y6YJKBPpJTA2ZWEQYGhXWCZUR4
 v2YTdAsj1j+PkIx/r3Nq4WiPlB7V5s0=
X-Google-Smtp-Source: APXvYqwCqAY9JWv8s2W6kEqNZ2DSsWZpTo3BVNMpoe60rP4Aog8S/eUlHFsI95ZAzin3z/qpXyRQgw==
X-Received: by 2002:aa7:8e50:: with SMTP id d16mr33692555pfr.227.1557160705787; 
 Mon, 06 May 2019 09:38:25 -0700 (PDT)
Received: from [192.168.0.6] ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id y8sm14438016pgk.20.2019.05.06.09.38.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 09:38:24 -0700 (PDT)
Subject: Re: [PATCH 1/3] nvme: 002: fix nvmet pass data with loop
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Omar Sandoval <osandov@osandov.com>
References: <20190505150611.15776-1-minwoo.im.dev@gmail.com>
 <20190505150611.15776-2-minwoo.im.dev@gmail.com>
 <SN6PR04MB45274C423AA7C3CC3DBB5ED586300@SN6PR04MB4527.namprd04.prod.outlook.com>
From: Minwoo Im <minwoo.im.dev@gmail.com>
Message-ID: <a66b775f-9a5f-fefc-ae29-c86678e66463@gmail.com>
Date: Tue, 7 May 2019 01:38:22 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <SN6PR04MB45274C423AA7C3CC3DBB5ED586300@SN6PR04MB4527.namprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_093827_005528_BD0F2A7D 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 5/7/19 1:25 AM, Chaitanya Kulkarni wrote:
> We need to get rid of the string comparison here.
Chaitanya,

Do you mean that test case bash script should check the result of output 
and return some error value instead of zero instead of *.out comparison ?

Thanks,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
