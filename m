Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC2F15BAD6
	for <lists+linux-nvme@lfdr.de>; Thu, 13 Feb 2020 09:34:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/egQ1438EKP6fuIm0TY/LJ3dROO3otJzX/mObCj+kMY=; b=XN9JiSY1FFBWN8
	QVuNa2YH38NmfqS9/5ysrhy8ogYTffImboQW227BJjDxGsWr1XwwaK+9i+dBhYc6gX40lDwO/StmK
	dwIdMKwqoRJwyPVGEXYzjJFF8dj+S2ImTg+v6bwLFC6quW7tHRHhTC+wO4+VzgYLBTLC/TfY2Xqub
	H5fUEhqiuvJSIN7g6Re1x5L1BXJr441EK1zY7XVcaXugwDtXXClbnioznmMKNhZYJe8b6eh90nNUR
	ixkieQKTlOx2EQe0+FCs1TuUMc9XEUPjqxDGH6zRD/BAji8c7z9WGGLY/WuT9CFIj1EpThqSpFGh/
	vrKXMgTOu12xbhcmswGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j29xC-0005ge-Ho; Thu, 13 Feb 2020 08:34:34 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j29x7-0005gG-8c
 for linux-nvme@lists.infradead.org; Thu, 13 Feb 2020 08:34:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581582867;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6P1v3Iu+hoMwyAvZnsnqaeTi9OyAbNLGVDD6m0DAybk=;
 b=UXjejbnZMr5sW5HJ+k+Zju4U4MKsyeGjjs0rPCGJtt1Sj8X3esS7g3HwJqpjCX1YWQe0Nc
 Zb5bKhrMyGhAxPNFAdAxPsgEpsG8/icePqNOH+dQgcJ2b2kizFtxUm5fA3sScuYGZAKvm9
 x3649wwfyO8Ea4G8TbCbj6MtJ/wNGyw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-204-rJ6TtbbAOv-cPsU2696GIw-1; Thu, 13 Feb 2020 03:34:25 -0500
X-MC-Unique: rJ6TtbbAOv-cPsU2696GIw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 82C5D802568;
 Thu, 13 Feb 2020 08:34:23 +0000 (UTC)
Received: from ming.t460p (ovpn-8-17.pek2.redhat.com [10.72.8.17])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id EA4AF1001B28;
 Thu, 13 Feb 2020 08:34:17 +0000 (UTC)
Date: Thu, 13 Feb 2020 16:34:13 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Damien Le Moal <Damien.LeMoal@wdc.com>
Subject: Re: [LSF/MM/BPF TOPIC] NVMe HDD
Message-ID: <20200213083413.GC9144@ming.t460p>
References: <CANo=J14resJ4U1nufoiDq+ULd0k-orRCsYah8Dve-y8uCjA62Q@mail.gmail.com>
 <20200211122821.GA29811@ming.t460p>
 <CANo=J14iRK8K3bc1g3rLBp=QTLZQak0DcHkvgZS2f=xO_HFgxQ@mail.gmail.com>
 <BYAPR04MB5816AA843E63FFE2EA1D5D23E71B0@BYAPR04MB5816.namprd04.prod.outlook.com>
 <20200212220328.GB25314@ming.t460p>
 <BYAPR04MB581622DDD1B8B56CEFF3C23AE71A0@BYAPR04MB5816.namprd04.prod.outlook.com>
 <20200213075348.GA9144@ming.t460p>
 <BYAPR04MB58160C04182D5FE3A15842BBE71A0@BYAPR04MB5816.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BYAPR04MB58160C04182D5FE3A15842BBE71A0@BYAPR04MB5816.namprd04.prod.outlook.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_003429_381058_648073F7 
X-CRM114-Status: GOOD (  32.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Tim Walker <tim.t.walker@seagate.com>, linux-scsi <linux-scsi@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gVGh1LCBGZWIgMTMsIDIwMjAgYXQgMDg6MjQ6MzZBTSArMDAwMCwgRGFtaWVuIExlIE1vYWwg
d3JvdGU6Cj4gT24gMjAyMC8wMi8xMyAxNjo1NCwgTWluZyBMZWkgd3JvdGU6Cj4gPiBPbiBUaHUs
IEZlYiAxMywgMjAyMCBhdCAwMjo0MDo0MUFNICswMDAwLCBEYW1pZW4gTGUgTW9hbCB3cm90ZToK
PiA+PiBNaW5nLAo+ID4+Cj4gPj4gT24gMjAyMC8wMi8xMyA3OjAzLCBNaW5nIExlaSB3cm90ZToK
PiA+Pj4gT24gV2VkLCBGZWIgMTIsIDIwMjAgYXQgMDE6NDc6NTNBTSArMDAwMCwgRGFtaWVuIExl
IE1vYWwgd3JvdGU6Cj4gPj4+PiBPbiAyMDIwLzAyLzEyIDQ6MDEsIFRpbSBXYWxrZXIgd3JvdGU6
Cj4gPj4+Pj4gT24gVHVlLCBGZWIgMTEsIDIwMjAgYXQgNzoyOCBBTSBNaW5nIExlaSA8bWluZy5s
ZWlAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gPj4+Pj4+Cj4gPj4+Pj4+IE9uIE1vbiwgRmViIDEwLCAy
MDIwIGF0IDAyOjIwOjEwUE0gLTA1MDAsIFRpbSBXYWxrZXIgd3JvdGU6Cj4gPj4+Pj4+PiBCYWNr
Z3JvdW5kOgo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+IE5WTWUgc3BlY2lmaWNhdGlvbiBoYXMgaGFyZGVu
ZWQgb3ZlciB0aGUgZGVjYWRlIGFuZCBub3cgTlZNZSBkZXZpY2VzCj4gPj4+Pj4+PiBhcmUgd2Vs
bCBpbnRlZ3JhdGVkIGludG8gb3VyIGN1c3RvbWVyc+KAmSBzeXN0ZW1zLiBBcyB3ZSBsb29rIGZv
cndhcmQsCj4gPj4+Pj4+PiBtb3ZpbmcgSEREcyB0byB0aGUgTlZNZSBjb21tYW5kIHNldCBlbGlt
aW5hdGVzIHRoZSBTQVMgSU9DIGFuZCBkcml2ZXIKPiA+Pj4+Pj4+IHN0YWNrLCBjb25zb2xpZGF0
aW5nIG9uIGEgc2luZ2xlIGFjY2VzcyBtZXRob2QgZm9yIHJvdGF0aW9uYWwgYW5kCj4gPj4+Pj4+
PiBzdGF0aWMgc3RvcmFnZSB0ZWNobm9sb2dpZXMuIFBDSWUtTlZNZSBvZmZlcnMgbmVhci1TQVRB
IGludGVyZmFjZQo+ID4+Pj4+Pj4gY29zdHMsIGZlYXR1cmVzIGFuZCBwZXJmb3JtYW5jZSBzdWl0
YWJsZSBmb3IgaGlnaC1jYXAgSEREcywgYW5kCj4gPj4+Pj4+PiBvcHRpbWFsIGludGVyb3BlcmFi
aWxpdHkgZm9yIHN0b3JhZ2UgYXV0b21hdGlvbiwgdGllcmluZywgYW5kCj4gPj4+Pj4+PiBtYW5h
Z2VtZW50LiBXZSB3aWxsIHNoYXJlIHNvbWUgZWFybHkgY29uY2VwdHVhbCByZXN1bHRzIGFuZCBw
cm9wb3NlZAo+ID4+Pj4+Pj4gc2FsaWVudCBkZXNpZ24gZ29hbHMgYW5kIGNoYWxsZW5nZXMgc3Vy
cm91bmRpbmcgYW4gTlZNZSBIREQuCj4gPj4+Pj4+Cj4gPj4+Pj4+IEhERC4gcGVyZm9ybWFuY2Ug
aXMgdmVyeSBzZW5zaXRpdmUgdG8gSU8gb3JkZXIuIENvdWxkIHlvdSBwcm92aWRlIHNvbWUKPiA+
Pj4+Pj4gYmFja2dyb3VuZCBpbmZvIGFib3V0IE5WTWUgSEREPyBTdWNoIGFzOgo+ID4+Pj4+Pgo+
ID4+Pj4+PiAtIG51bWJlciBvZiBodyBxdWV1ZXMKPiA+Pj4+Pj4gLSBodyBxdWV1ZSBkZXB0aAo+
ID4+Pj4+PiAtIHdpbGwgTlZNZSBzb3J0L21lcmdlIElPIGFtb25nIGFsbCBTUXMgb3Igbm90Pwo+
ID4+Pj4+Pgo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBEaXNjdXNzaW9uIFByb3Bvc2Fs
Ogo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+IFdl4oCZZCBsaWtlIHRvIHNoYXJlIG91ciB2aWV3cyBhbmQg
c29saWNpdCBpbnB1dCBvbjoKPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiAtV2hhdCBMaW51eCBzdG9yYWdl
IHN0YWNrIGFzc3VtcHRpb25zIGRvIHdlIG5lZWQgdG8gYmUgYXdhcmUgb2YgYXMgd2UKPiA+Pj4+
Pj4+IGRldmVsb3AgdGhlc2UgZGV2aWNlcyB3aXRoIGRyYXN0aWNhbGx5IGRpZmZlcmVudCBwZXJm
b3JtYW5jZQo+ID4+Pj4+Pj4gY2hhcmFjdGVyaXN0aWNzIHRoYW4gdHJhZGl0aW9uYWwgTkFORD8g
Rm9yIGV4YW1wbGUsIHdoYXQgc2NoZWR1bGFyIG9yCj4gPj4+Pj4+PiBkZXZpY2UgZHJpdmVyIGxl
dmVsIGNoYW5nZXMgd2lsbCBiZSBuZWVkZWQgdG8gaW50ZWdyYXRlIE5WTWUgSEREcz8KPiA+Pj4+
Pj4KPiA+Pj4+Pj4gSU8gbWVyZ2UgaXMgb2Z0ZW4gaW1wb3J0YW50IGZvciBIREQuIElPIG1lcmdl
IGlzIHVzdWFsbHkgdHJpZ2dlcmVkIHdoZW4KPiA+Pj4+Pj4gLnF1ZXVlX3JxKCkgcmV0dXJucyBT
VFNfUkVTT1VSQ0UsIHNvIGZhciB0aGlzIGNvbmRpdGlvbiB3b24ndCBiZQo+ID4+Pj4+PiB0cmln
Z2VyZWQgZm9yIE5WTWUgU1NELgo+ID4+Pj4+Pgo+ID4+Pj4+PiBBbHNvIGJsay1tcSBraWxscyBC
REkgcXVldWUgY29uZ2VzdGlvbiBhbmQgaW9jIGJhdGNoaW5nLCBhbmQgY2F1c2VzCj4gPj4+Pj4+
IHdyaXRlYmFjayBwZXJmb3JtYW5jZSByZWdyZXNzaW9uWzFdWzJdLgo+ID4+Pj4+Pgo+ID4+Pj4+
PiBXaGF0IEkgYW0gdGhpbmtpbmcgaXMgdGhhdCBpZiB3ZSBuZWVkIHRvIHN3aXRjaCB0byB1c2Ug
aW5kZXBlbmRlbnQgSU8KPiA+Pj4+Pj4gcGF0aCBmb3IgaGFuZGxpbmcgU1NEIGFuZCBIREQuIElP
LCBnaXZlbiB0aGUgdHdvIG1lZGl1bXMgYXJlIHNvCj4gPj4+Pj4+IGRpZmZlcmVudCBmcm9tIHBl
cmZvcm1hbmNlIHZpZXdwb2ludC4KPiA+Pj4+Pj4KPiA+Pj4+Pj4gWzFdIGh0dHBzOi8vdXJsZGVm
ZW5zZS5wcm9vZnBvaW50LmNvbS92Mi91cmw/dT1odHRwcy0zQV9fbG9yZS5rZXJuZWwub3JnX2xp
bnV4LTJEc2NzaV9QaW5lLkxOWC40LjQ0TDAuMTkwOTE4MTIxMzE0MS4xNTA3LTJEMTAwMDAwLTQw
aW9sYW50aGUucm93bGFuZC5vcmdfJmQ9RHdJRmFRJmM9SUdEbGcwbEQwYi1uZWJtSkowS3A4QSZy
PU5XMVgweVJITk5FbHVaOHNPR1hCeENiUUpaUFdjSWtQVDBVeTN5blZzRlUmbT1wU25IcHRfdVFR
NzNKVjRWSVFnMUNfUFZBY0x2cUJCdG15eFFId1dqR1NNJnM9dHNuRlA4YlFJQXE3RzY2Qjc1TFRl
M3ZvNEsxNEhiTDlKSktzeGxfTFBBdyZlPQo+ID4+Pj4+PiBbMl0gaHR0cHM6Ly91cmxkZWZlbnNl
LnByb29mcG9pbnQuY29tL3YyL3VybD91PWh0dHBzLTNBX19sb3JlLmtlcm5lbC5vcmdfbGludXgt
MkRzY3NpXzIwMTkxMjI2MDgzNzA2LkdBMTc5NzQtNDBtaW5nLnQ0NjBwXyZkPUR3SUZhUSZjPUlH
RGxnMGxEMGItbmVibUpKMEtwOEEmcj1OVzFYMHlSSE5ORWx1WjhzT0dYQnhDYlFKWlBXY0lrUFQw
VXkzeW5Wc0ZVJm09cFNuSHB0X3VRUTczSlY0VklRZzFDX1BWQWNMdnFCQnRteXhRSHdXakdTTSZz
PUdKd1N4WHRjX3FaSEtuclRxU2J5dFVqdVJyclFnWnB2VjNieFpZRkRIZTQmZT0KPiA+Pj4+Pj4K
PiA+Pj4+Pj4KPiA+Pj4+Pj4gVGhhbmtzLAo+ID4+Pj4+PiBNaW5nCj4gPj4+Pj4+Cj4gPj4+Pj4K
PiA+Pj4+PiBJIHdvdWxkIGV4cGVjdCB0aGUgZHJpdmUgd291bGQgc3VwcG9ydCBhIHJlYXNvbmFi
bGUgbnVtYmVyIG9mIHF1ZXVlcwo+ID4+Pj4+IGFuZCBhIHJlbGF0aXZlbHkgZGVlcCBxdWV1ZSBk
ZXB0aCwgbW9yZSBpbiBsaW5lIHdpdGggTlZNZSBwcmFjdGljZXMKPiA+Pj4+PiB0aGFuIFNBUyBI
REQncyB0eXBpY2FsIDEyOC4gQnV0IGl0IHByb2JhYmx5IGRvZXNuJ3QgbWFrZSBzZW5zZSB0bwo+
ID4+Pj4+IHF1ZXVlIHVwIHRob3VzYW5kcyBvZiBjb21tYW5kcyBvbiBzb21ldGhpbmcgYXMgc2xv
dyBhcyBhbiBIREQsIGFuZAo+ID4+Pj4+IG1hbnkgY3VzdG9tZXJzIGtlZXAgcXVldWVzIDwgMzIg
Zm9yIGxhdGVuY3kgbWFuYWdlbWVudC4KPiA+Pj4+Cj4gPj4+PiBFeHBvc2luZyBhbiBIREQgdGhy
b3VnaCBtdWx0aXBsZS1xdWV1ZXMgZWFjaCB3aXRoIGEgaGlnaCBxdWV1ZSBkZXB0aCBpcwo+ID4+
Pj4gc2ltcGx5IGFza2luZyBmb3IgdHJvdWJsZXMuIENvbW1hbmRzIHdpbGwgZW5kIHVwIHNwZW5k
aW5nIHNvIG11Y2ggdGltZQo+ID4+Pj4gc2l0dGluZyBpbiB0aGUgcXVldWVzIHRoYXQgdGhleSB3
aWxsIHRpbWVvdXQuIFRoaXMgY2FuIGFscmVhZHkgYmUgb2JzZXJ2ZWQKPiA+Pj4+IHdpdGggdGhl
IHNtYXJ0cHFpIFNBUyBIQkEgd2hpY2ggZXhwb3NlcyBzaW5nbGUgZHJpdmVzIGFzIG11bHRpcXVl
dWUgYmxvY2sKPiA+Pj4+IGRldmljZXMgd2l0aCBoaWdoIHF1ZXVlIGRlcHRoLiBFeGVyY2lzaW5n
IHRoZXNlIGRyaXZlcyBoZWF2aWx5IGxlYWRzIHRvCj4gPj4+PiB0aG91c2FuZHMgb2YgY29tbWFu
ZHMgYmVpbmcgcXVldWVkIGFuZCB0byB0aW1lb3V0cy4gSXQgaXMgZmFpcmx5IGVhc3kgdG8KPiA+
Pj4+IHRyaWdnZXIgdGhpcyB3aXRob3V0IGEgbWFudWFsIGNoYW5nZSB0byB0aGUgUUQuIFRoaXMg
aXMgb24gbXkgdG8tZG8gbGlzdCBvZgo+ID4+Pj4gZml4ZXMgZm9yIHNvbWUgdGltZSBub3cgKGxh
Y2tpbmcgdGltZSB0byBkbyBpdCkuCj4gPj4+Cj4gPj4+IEp1c3Qgd29uZGVyaW5nIHdoeSBzbWFy
dHBxaSBTQVMgd29uJ3Qgc2V0IG9uZSBwcm9wZXIgLmNtZF9wZXJfbHVuIGZvcgo+ID4+PiBhdm9p
ZGluZyB0aGUgaXNzdWUsIGxvb2tzIHRoZSBkcml2ZXIgc2ltcGx5IGFzc2lnbnMgLmNhbl9xdWV1
ZSB0byBpdCwKPiA+Pj4gdGhlbiBpdCBpc24ndCBzdHJhbmdlIHRvIHNlZSB0aGUgdGltZW91dCBp
c3N1ZS4gSWYgLmNhbl9xdWV1ZSBpcyBhIGJpdAo+ID4+PiBiaWcsIEhERC4gaXMgZWFzaWx5IHNh
dHVyYXRlZCB0b28gbG9uZy4KPiA+Pj4KPiA+Pj4+Cj4gPj4+PiBOVk1lIEhERHMgbmVlZCB0byBo
YXZlIGFuIGludGVyZmFjZSBzZXR1cCB0aGF0IG1hdGNoIHRoZWlyIHNwZWVkLCB0aGF0IGlzLAo+
ID4+Pj4gc29tZXRoaW5nIGxpa2UgYSBTQVMgaW50ZXJmYWNlOiAqc2luZ2xlKiBxdWV1ZSBwYWly
IHdpdGggYSBtYXggUUQgb2YgMjU2IG9yCj4gPj4+PiBsZXNzIGRlcGVuZGluZyBvbiB3aGF0IHRo
ZSBkcml2ZSBjYW4gdGFrZS4gVGhlaXIgaXMgbm8gVEFTS19TRVRfRlVMTAo+ID4+Pj4gbm90aWZp
Y2F0aW9uIG9uIE5WTWUsIHNvIHRocm90dGxpbmcgaGFzIHRvIGNvbWUgZnJvbSB0aGUgbWF4IFFE
IG9mIHRoZSBTUSwKPiA+Pj4+IHdoaWNoIHRoZSBkcml2ZSB3aWxsIGFkdmVydGlzZSB0byB0aGUg
aG9zdC4KPiA+Pj4+Cj4gPj4+Pj4gTWVyZ2UgYW5kIGVsZXZhdG9yIGFyZSBpbXBvcnRhbnQgdG8g
SEREIHBlcmZvcm1hbmNlLiBJIGRvbid0IGJlbGlldmUKPiA+Pj4+PiBOVk1lIHNob3VsZCBhdHRl
bXB0IHRvIG1lcmdlL3NvcnQgYWNyb3NzIFNRcy4gQ2FuIE5WTWUgbWVyZ2Uvc29ydAo+ID4+Pj4+
IHdpdGhpbiBhIFNRIHdpdGhvdXQgZHJpdmluZyBsYXJnZSBkaWZmZXJlbmNlcyBiZXR3ZWVuIFNT
RCAmIEhERCBkYXRhCj4gPj4+Pj4gcGF0aHM/Cj4gPj4+Pgo+ID4+Pj4gQXMgZmFyIGFzIEkga25v
dywgdGhlcmUgaXMgbm8gbWVyZ2luZyBnb2luZyBvbiBvbmNlIHJlcXVlc3RzIGFyZSBwYXNzZWQg
dG8KPiA+Pj4+IHRoZSBkcml2ZXIgYW5kIGFkZGVkIHRvIGFuIFNRLiBTbyB0aGlzIGlzIGJlc2lk
ZSB0aGUgcG9pbnQuCj4gPj4+PiBUaGUgY3VycmVudCBkZWZhdWx0IGJsb2NrIHNjaGVkdWxlciBm
b3IgTlZNZSBTU0RzIGlzICJub25lIi4gVGhpcyBpcwo+ID4+Pj4gZGVjaWRlZCBiYXNlZCBvbiB0
aGUgbnVtYmVyIG9mIHF1ZXVlcyBvZiB0aGUgZGV2aWNlLiBGb3IgTlZNZSBkcml2ZXMgdGhhdAo+
ID4+Pj4gaGF2ZSBvbmx5IGEgc2luZ2xlIHF1ZXVlICpBTkQqIHRoZSBRVUVVRV9GTEFHX05PTlJP
VCBmbGFnIGNsZWFyZWQgaW4gdGhlaXIKPiA+Pj4+IHJlcXVlc3QgcXVldWUgd2lsbCBjYW4gZmFs
bGJhY2sgdG8gdGhlIGRlZmF1bHQgc3Bpbm5pbmcgcnVzdCBtcS1kZWFkbGluZQo+ID4+Pj4gZWxl
dmF0b3IuIFRoYXQgd2lsbCBhY2hpZXZlIGNvbW1hbmQgbWVyZ2luZyBhbmQgTEJBIG9yZGVyaW5n
IG5lZWRlZCBmb3IKPiA+Pj4+IGdvb2QgcGVyZm9ybWFuY2Ugb24gSEREcy4KPiA+Pj4KPiA+Pj4g
bXEtZGVhZGxpbmUgYmFzaWNhbGx5IHdvbid0IG1lcmdlIElPIGlmIFNUU19SRVNPVVJDRSBpc24n
dCByZXR1cm5lZCBmcm9tCj4gPj4+IC5xdWV1ZV9ycSgpLCBvciBibGtfbXFfZ2V0X2Rpc3BhdGNo
X2J1ZGdldCBhbHdheXMgcmV0dXJuIHRydWUuIE5WTWUncwo+ID4+PiAucXVldWVfcnEoKSBiYXNp
Y2FsbHkgYWx3YXlzIHJldHVybnMgU1RTX09LLgo+ID4+Cj4gPj4gSSBhbSBjb25mdXNlZDogd2hl
biBhbiBlbGV2YXRvciBpcyBzZXQsIC0+cXVldWVfcnEoKSBpcyBjYWxsZWQgZm9yIHJlcXVlc3Rz
Cj4gPj4gb2J0YWluZWQgZnJvbSB0aGUgZWxldmF0b3IgKHdpdGggZS0+dHlwZS0+b3BzLmRpc3Bh
dGNoX3JlcXVlc3QoKSksIGFmdGVyCj4gPj4gdGhlIHJlcXVlc3RzIHdlbnQgdGhyb3VnaCBpdC4g
QW5kIG1lcmdpbmcgd2lsbCBoYXBwZW4gYXQgdGhhdCBzdGFnZSB3aGVuCj4gPj4gbmV3IHJlcXVl
c3RzIGFyZSBpbnNlcnRlZCBpbiB0aGUgZWxldmF0b3IuCj4gPiAKPiA+IFdoZW4gcmVxdWVzdCBp
cyBxdWV1ZWQgdG8gbGxkIHZpYSAucXVldWVfcnEoKSwgdGhlIHJlcXVlc3QgaGFzIGJlZW4KPiA+
IHJlbW92ZWQgZnJvbSBzY2hlZHVsZXIgcXVldWUuIEFuZCBJTyBtZXJnZSBpcyBqdXN0IGRvbmUg
aW5zaWRlIG9yCj4gPiBhZ2FpbnN0IHNjaGVkdWxlciBxdWV1ZS4KPiAKPiBZZXMsIGZvciBpbmNv
bWluZyBuZXcgQklPcywgbm90IGZvciByZXF1ZXN0cyBwYXNzZWQgdG8gdGhlIExMRC4KPiAKPiA+
PiBJZiB0aGUgLT5xdWV1ZV9ycSgpIHJldHVybnMgQkxLX1NUU19SRVNPVVJDRSBvciBCTEtfU1RT
X0RFVl9SRVNPVVJDRSwgdGhlCj4gPj4gcmVxdWVzdCBpcyBpbmRlZWQgcmVxdWV1ZWQgd2hpY2gg
b2ZmZXIgbW9yZSBjaGFuY2VzIG9mIGZ1cnRoZXIgbWVyZ2luZywgYnV0Cj4gPj4gdGhhdCBpcyBu
b3QgdGhlIHNhbWUgYXMgbm8gbWVyZ2luZyBoYXBwZW5pbmcuCj4gPj4gQW0gSSBtaXNzaW5nIHlv
dXIgcG9pbnQgaGVyZSA/Cj4gPiAKPiA+IEJMS19TVFNfUkVTT1VSQ0Ugb3IgQkxLX1NUU19ERVZf
UkVTT1VSQ0Ugb3IgZ2V0dGluZyBubyBidWRnZXQgY2FuIGJlCj4gPiB0aG91Z2h0IGFzIGRldmlj
ZSBzYXR1cmF0aW9uIGZlZWRiYWNrLCB0aGVuIG1vcmUgcmVxdWVzdHMgY2FuIGJlCj4gPiBnYXRo
ZXJlZCBpbiBzY2hlZHVsZXIgcXVldWUgc2luY2Ugd2UgZG9uJ3QgZGVxdWV1ZSByZXF1ZXN0IGZy
b20KPiA+IHNjaGVkdWxlciBxdWV1ZSB3aGVuIHRoYXQgaGFwcGVucywgdGhlbiBJTyBtZXJnZSBp
cyBwb3NzaWJsZS4KPiA+IAo+ID4gV2l0aG91dCBhbnkgZGV2aWNlIHNhdHVyYXRpb24gZmVlZGJh
Y2sgZnJvbSBkcml2ZXIsIGJsb2NrIGxheWVyIGp1c3QKPiA+IGRlcXVldWVzIHJlcXVlc3QgZnJv
bSBzY2hlZHVsZXIgcXVldWUgd2l0aCBzYW1lIHNwZWVkIG9mIHN1Ym1pc3Npb24gdG8KPiA+IGhh
cmR3YXJlLCB0aGVuIG5vIElPIGNhbiBiZSBtZXJnZWQuCj4gCj4gR290IGl0LiBBbmQgc2luY2Ug
cXVldWUgZnVsbCB3aWxsIG1lYW4gbm8gbW9yZSB0YWdzLCBzdWJtaXNzaW9uIHdpbGwgYmxvY2sK
PiBvbiBnZXRfcmVxdWVzdCgpIGFuZCB0aGVyZSB3aWxsIGJlIG5vIGNoYW5jZSBpbiB0aGUgZWxl
dmF0b3IgdG8gbWVyZ2UKPiBhbnl0aGluZyAoYXNpZGUgZnJvbSBvcHBvcnR1bmlzdGljIG1lcmdp
bmcgaW4gcGx1Z3MpLCBpc24ndCBpdCA/Cj4gU28gSSBndWVzcyBOVk1lIEhERHMgd2lsbCBuZWVk
IHNvbWUgdHVuaW5nIGluIHRoaXMgYXJlYS4KCnNjaGVkdWxlciBxdWV1ZSBkZXB0aCBpcyB1c3Vh
bGx5IDIgdGltZXMgb2YgaHcgcXVldWUgZGVwdGgsIHNvIHJlcXVlc3RzCmFyIHVzdWFsbHkgZW5v
dWdoIGZvciBtZXJnaW5nLgoKRm9yIE5WTWUsIHRoZXJlIGlzbid0IG5zIHF1ZXVlIGRlcHRoLCBz
dWNoIGFzIHNjc2kncyBkZXZpY2UgcXVldWUgZGVwdGgsCm1lYW50aW1lIHRoZSBodyBxdWV1ZSBk
ZXB0aCBpcyBiaWcgZW5vdWdoLCBzbyBubyBjaGFuY2UgdG8gdHJpZ2dlciBtZXJnZS4KClRoYW5r
cywKTWluZwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LW52bWUgbWFpbGluZyBsaXN0CmxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
